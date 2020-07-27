//
//  NsfwImgDetector.swift
//  NsfwImgDetector
//
//  Created by rain on 27/7/20.
//

import UIKit
import CoreML
import Vision
import ImageIO


@available(iOS 11.0, *)
@objc public class NsfwImgDetector: NSObject {

    lazy var model = Nudity()
    
    @objc
    public func check(image:UIImage,callback:@escaping (_ isNoSafe:Bool,_ confidence:Float)->Void) {
        
        let completionHandler : (VNRequest, Error?) -> Void = {
            (request:VNRequest, error:Error?) in
            
            guard let observations = request.results as? [VNClassificationObservation]
                else { fatalError("unexpected result type from VNCoreMLRequest") }
            guard let best = observations.first
                else { fatalError("can't get best result") }
            
            callback(best.identifier == "NSFW", best.confidence)
        }
        
        let classificationRequest: VNCoreMLRequest = {
            do {
                let model = try VNCoreMLModel(for: self.model.model)
                return VNCoreMLRequest(model: model, completionHandler: completionHandler)
            } catch {
                fatalError("Cannot load ML model")
            }
        }()
        
        let handler: VNImageRequestHandler?
        if let cgImage = image.cgImage {
            handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
        } else if let ciImage = image.ciImage {
            handler = VNImageRequestHandler(ciImage: ciImage, options: [:])
        } else {
            handler = nil
        }
        
        
        DispatchQueue.global(qos: .userInteractive).async {
            do {
                try handler?.perform([classificationRequest])
            } catch {
                print(error)
            }
        }   
    }
}
