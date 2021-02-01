//
//  PassioSDK.swift
//  passioapp
//
//  Created by Jaime Betancourt on 1/31/21.
//

import Foundation

#if canImport(PassioSDK)
import PassioSDK
#endif

@objc(PassioSDKRN) class PassioSDKRN: NSObject {
  @objc func constantsToExport() -> [AnyHashable : Any]! {
    return ["Logo": "No logo found"]
  }
}

/*
 class PassioQuickStartViewController: UIViewController {
 
 //label and activity indicator
 @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
 @IBOutlet weak var logoName: UILabel!
 
 //sdk
 let passioSDK = PassioSDK.shared
 //allows you use to display video as it’s captured by an input device.
 var previewLayer: AVCaptureVideoPreviewLayer?
 
 let passioIDToName = ["LOG0002": "Coca Cola"]//,"LOG0001": "Starbuck" ]

 override func viewDidLoad() {
     super.viewDidLoad()
     logoName.isHidden = true
      //#error("please replace with the key from Passio")
      passioSDK.configure(key: "ppGdJa8R0gizAGbhbvrVTtHIB44XH6SWSiuPfhgmlo") { (isReady) in
         print("Passio isReady = \(isReady)")
     }
 }


 //Check for permission
 override func viewWillAppear(_ animated: Bool) {
     super.viewWillAppear(animated)
     if AVCaptureDevice.authorizationStatus(for: .video) == .authorized {
         startDetection()
     } else {
         AVCaptureDevice.requestAccess(for: .video) { (granted) in
             if granted {
                 DispatchQueue.main.async {
                     self.startDetection()
                 }
             } else {
                 print("The user didn't grant access to use camera")
             }
         }
     }
 }

 func startDetection() {
     setupPreviewLayer()
     passioSDK.startCustomObjectDetection(modelName: "passio_developerlogodemo_SSD", customDetectionDelegate: self) { (ready) in
     
     }
 }

 func setupPreviewLayer() {
     guard previewLayer == nil else { return }
     if let previewLayer = passioSDK.getPreviewLayer() {
         self.previewLayer = previewLayer
         previewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
         previewLayer.frame = view.frame
         view.layer.insertSublayer(previewLayer, at: 0)
     }
 }

 override func viewWillDisappear(_ animated: Bool) {
     super.viewWillDisappear(animated)
     //passioSDK.stopFoodDetection()
     previewLayer?.removeFromSuperlayer()
     previewLayer = nil
 }

}



extension PassioQuickStartViewController: CustomDetectionDelegate {
 
 func customDetectionResult(odCandidates: [CustomObjectDetectionCandidate]?, hnnCandidates: [CustomClassificationCandidate]?, classCandidates: [CustomClassificationCandidate]?, image: UIImage?) {
     var logoName = "No logo found"
     if let candidate = odCandidates?.first {
         logoName = passioIDToName[candidate.label] ?? candidate.passioID
     }
     DispatchQueue.main.async {
         self.logoName.isHidden = false
         self.logoName.text = logoName
     }
 }
}
 */
