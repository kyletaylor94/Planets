//
//  ViewController.swift
//  ArKit FIrst
//
//  Created by Turdesán Csaba on 2023. 01. 19..
//

import UIKit
import SceneKit
import ARKit


class ViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.scene.background.contents = UIImage(named: "art.scnassets/8k_stars.jpg")
        
//MARK: - Mars
        func marsObject(){
         let sphere = SCNSphere(radius: 0.10)
         let material = SCNMaterial()
         material.diffuse.contents = UIImage(named: "art.scnassets/8k_mars.jpg")
         sphere.materials = [material]
         
         let materialNode = SCNNode()
         materialNode.geometry = sphere
         let rotateMaterial = SCNAction.rotateBy(x: 0, y: CGFloat(2 * Double.pi), z: 0, duration: 9)
         let repeatForever = SCNAction.repeatForever(rotateMaterial)
         materialNode.runAction(repeatForever)
         
         let staticNode = SCNNode()
         staticNode.addChildNode(materialNode)
         staticNode.position = SCNVector3(x: 1.5, y: 1.5, z: -0.2)
         
         let light = SCNLight()
         light.type = .omni
         let lightNode = SCNNode()
         lightNode.light = light
         lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
         sceneView.scene.rootNode.addChildNode(lightNode)
         sceneView.scene.rootNode.addChildNode(staticNode)
         sceneView.autoenablesDefaultLighting = true
         
         }
//MARK: - Mercury
        func mercuryObject(){
         let spereMercury = SCNSphere(radius: 0.02)
         let materialofMercury = SCNMaterial()
         materialofMercury.diffuse.contents = UIImage(named: "art.scnassets/8k_mercury.jpg")
         spereMercury.materials = [materialofMercury]
         
         let materialNode = SCNNode()
         materialNode.geometry = spereMercury
         let rotateMaterial = SCNAction.rotateBy(x: 0, y: CGFloat(2 * Double.pi), z: 0, duration: 4)
         let repeatForever = SCNAction.repeatForever(rotateMaterial)
         materialNode.runAction(repeatForever)
         
         let staticNode = SCNNode()
         staticNode.addChildNode(materialNode)
         staticNode.position = SCNVector3(x: 0.1, y: 0.1, z: -0.5)
         
         let light = SCNLight()
         light.type = .omni
         let lightNode = SCNNode()
         lightNode.light = light
         lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
         sceneView.scene.rootNode.addChildNode(lightNode)
         sceneView.scene.rootNode.addChildNode(staticNode)
         sceneView.autoenablesDefaultLighting = true
                 
         }
//MARK: - Venus
        func venusObject(){
         
         let sphereVenus = SCNSphere(radius: 0.08)
         let materialofVenus = SCNMaterial()
         materialofVenus.diffuse.contents = UIImage(named: "art.scnassets/8k_venus_surface.jpg")
         sphereVenus.materials = [materialofVenus]
         
         let materialNode = SCNNode()
         materialNode.geometry = sphereVenus
         let rotateMaterial = SCNAction.rotateBy(x: 0, y: CGFloat(-2 * Double.pi), z: 0, duration: 12)
         let repeatForever = SCNAction.repeatForever(rotateMaterial)
         materialNode.runAction(repeatForever)
         
         let staticNode = SCNNode()
         staticNode.addChildNode(materialNode)
         staticNode.position = SCNVector3(x: 0.5, y: 0.5, z: -0.5)
         
         let light = SCNLight()
         light.type = .omni
         let lightNode = SCNNode()
         lightNode.light = light
         lightNode.position = SCNVector3(x: 0, y: 5, z: 5)
         sceneView.scene.rootNode.addChildNode(lightNode)
         sceneView.scene.rootNode.addChildNode(staticNode)
         sceneView.autoenablesDefaultLighting = true
         }
//MARK: - Earth
        func earthObject(){
         
         let sphereEarth = SCNSphere(radius: 0.10)
         let materialEarth = SCNMaterial()
         materialEarth.diffuse.contents = UIImage(named: "art.scnassets/8k_earth_daymap.jpg")
         sphereEarth.materials = [materialEarth]
         
         
         let materialNode = SCNNode()
         materialNode.geometry = sphereEarth
         let rotateMaterial = SCNAction.rotateBy(x: 0, y: CGFloat(2 * Double.pi), z: 0, duration: 12)
         let repeatForever = SCNAction.repeatForever(rotateMaterial)
         materialNode.runAction(repeatForever)
         
         let staticNode = SCNNode()
         staticNode.addChildNode(materialNode)
         staticNode.position = SCNVector3(x: 1, y: 1, z: -0.5)
         
         let light = SCNLight()
         light.type = .omni
         let lightNode = SCNNode()
         lightNode.light = light
         lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
         sceneView.scene.rootNode.addChildNode(lightNode)
         sceneView.scene.rootNode.addChildNode(staticNode)
         sceneView.autoenablesDefaultLighting = true
                  
         }
//MARK: - Jupiter
        func jupiterObject() {
         
         let sphereJupiter = SCNSphere(radius: 0.30)
         let materalJupiter = SCNMaterial()
         materalJupiter.diffuse.contents = UIImage(named: "art.scnassets/8k_jupiter.jpg")
         sphereJupiter.materials = [materalJupiter]
         
         let materialNode = SCNNode()
         materialNode.geometry = sphereJupiter
         let rotateMaterial = SCNAction.rotateBy(x: 0, y: CGFloat(2 * Double.pi), z: 0, duration: 37)
         let repeatForever = SCNAction.repeatForever(rotateMaterial)
         materialNode.runAction(repeatForever)
         
         let staticNode = SCNNode()
         staticNode.addChildNode(materialNode)
         staticNode.position = SCNVector3(x: 2.2, y: 2.2, z: -0.5)
         
         let light = SCNLight()
         light.type = .omni
         let lightNode = SCNNode()
         lightNode.light = light
         lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
         sceneView.scene.rootNode.addChildNode(lightNode)
         sceneView.scene.rootNode.addChildNode(staticNode)
         sceneView.autoenablesDefaultLighting = true
         
         }
//MARK: - Saturn
        func saturnObject() {
         
         let sphereSaturn = SCNSphere(radius: 0.30)
         let materalSaturn = SCNMaterial()
         materalSaturn.diffuse.contents = UIImage(named: "art.scnassets/8k_saturn.jpg")
         sphereSaturn.materials = [materalSaturn]
         
         let materialNode = SCNNode()
         materialNode.geometry = sphereSaturn
         let rotateMaterial = SCNAction.rotateBy(x: 0, y: CGFloat(2 * Double.pi), z: 0, duration: 37)
         let repeatForever = SCNAction.repeatForever(rotateMaterial)
         materialNode.runAction(repeatForever)
         
         
         let staticNode = SCNNode()
         staticNode.addChildNode(materialNode)
         staticNode.position = SCNVector3(x: 4.4, y: 2.4, z: -0.5)
         
         let light = SCNLight()
         light.type = .omni
         let lightNode = SCNNode()
         lightNode.light = light
         lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
         sceneView.scene.rootNode.addChildNode(lightNode)
         sceneView.scene.rootNode.addChildNode(staticNode)
         sceneView.autoenablesDefaultLighting = true
                  
         //ring saturn
         
         let torus = SCNTorus(ringRadius: 0.8, pipeRadius: 0.009)
         
         let ringMaterial = SCNMaterial()
         ringMaterial.diffuse.contents = UIImage(named: "art.scnassets/8k_saturn_ring.png")
         torus.materials = [ringMaterial]
         
         let ringNode = SCNNode()
         ringNode.geometry = torus
         
         staticNode.addChildNode(ringNode)
         
         //rotate ring
         let materialNodeOfSaturnRings = SCNNode()
         materialNodeOfSaturnRings.geometry = torus
         
         let rotateMaterialSaturn = SCNAction.rotateBy(x: 0, y: CGFloat(2 * Double.pi), z: 0, duration: 17)
         let repeatForeverRings = SCNAction.repeatForever(rotateMaterialSaturn)
         
         ringNode.runAction(repeatForeverRings)
            
         }
//MARK: - Uranus
        func uranusObject() {
         
         let sphereUranus = SCNSphere(radius: 0.20)
         let materalUranus = SCNMaterial()
         materalUranus.diffuse.contents = UIImage(named: "art.scnassets/2k_uranus.jpg")
         sphereUranus.materials = [materalUranus]
         
         let materialNode = SCNNode()
         materialNode.geometry = sphereUranus
         let rotateMaterial = SCNAction.rotateBy(x: 0, y: CGFloat(2 * Double.pi), z: 0, duration: 12)
         let repeatForever = SCNAction.repeatForever(rotateMaterial)
         materialNode.runAction(repeatForever)
         
         let staticNode = SCNNode()
         staticNode.addChildNode(materialNode)
         staticNode.position = SCNVector3(x: 5.6, y: 4.6, z: -0.2)
         
         let light = SCNLight()
         light.type = .omni
         let lightNode = SCNNode()
         lightNode.light = light
         lightNode.position = SCNVector3(x: 0, y: 5, z: 10)
         sceneView.scene.rootNode.addChildNode(lightNode)
         sceneView.scene.rootNode.addChildNode(staticNode)
         sceneView.autoenablesDefaultLighting = true
                  
         }
//MARK: - Neptune
        func neptuneObject() {
         
         let sphereNeptune = SCNSphere(radius: 0.20)
         let materialNeptune = SCNMaterial()
         materialNeptune.diffuse.contents = UIImage(named: "art.scnassets/2k_neptune.jpg")
         sphereNeptune.materials = [materialNeptune]
         
         let materialNode = SCNNode()
         materialNode.geometry = sphereNeptune
         let rotateMaterial = SCNAction.rotateBy(x: 0, y: CGFloat(2 * Double.pi), z: 0, duration: 12)
         let repeatForever = SCNAction.repeatForever(rotateMaterial)
         materialNode.runAction(repeatForever)
         
         let staticNode = SCNNode()
         staticNode.addChildNode(materialNode)
         staticNode.position = SCNVector3(x: 6.9, y: 4.8, z: -0.2)
         
         let light = SCNLight()
         light.type = .omni
         let lightNode = SCNNode()
         lightNode.light = light
         lightNode.position = SCNVector3(x: 0, y: 1, z: 10)
         sceneView.scene.rootNode.addChildNode(lightNode)
         sceneView.scene.rootNode.addChildNode(staticNode)
         sceneView.autoenablesDefaultLighting = true
         }
//MARK: - Sun
         func sunObject() {
         
         
         let spehereSun = SCNSphere(radius: 1.4)
         let materialSun = SCNMaterial()
         materialSun.diffuse.contents = UIImage(named: "art.scnassets/8k_sun.jpg")
         spehereSun.materials = [materialSun]
         
         // surface color of sun
         materialSun.emission.contents = UIColor.systemYellow
         materialSun.shininess = 50
         //
         
         let materialNode = SCNNode()
         materialNode.geometry = spehereSun
         let rotateMaterial = SCNAction.rotateBy(x: 0, y: CGFloat(2 * Double.pi), z: 0, duration: 30)
         let repeatForever = SCNAction.repeatForever(rotateMaterial)
         materialNode.runAction(repeatForever)
         
         //position of sun
         let staticNode = SCNNode()
         staticNode.addChildNode(materialNode)
         staticNode.position = SCNVector3(x: -20.5, y: -1.5, z: -0.9)
         
        //created the sunspehere
         sceneView.scene.rootNode.addChildNode(staticNode)
         sceneView.autoenablesDefaultLighting = true
     
         staticNode.filters = addBloom()
         
         }
//MARK: - Sun addbloom
         func addBloom() -> [CIFilter]? {
         let bloomFilter = CIFilter(name:"CIBloom")!
         bloomFilter.setValue(70.0, forKey: "inputIntensity")
         bloomFilter.setValue(430.0, forKey: "inputRadius")
      
        
        return [bloomFilter]
         }
//MARK: - Call the functions
         sceneView.delegate = self
         
         sunObject()
         mercuryObject()
         venusObject()
         earthObject()
         marsObject()
         jupiterObject()
         saturnObject()
         uranusObject()
         neptuneObject()
         
         
         }
         
         override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         
         // Create a session configuration
         let configuration = ARWorldTrackingConfiguration()
         
         // Run the view's session
         sceneView.session.run(configuration)
         }
         
         override func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
         
         // Pause the view's session
         sceneView.session.pause()
         }
         
    
}
