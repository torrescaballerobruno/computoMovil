//
//  ViewController.swift
//  Mapas
//
//  Created by Bruno Torres D4 on 10/7/19.
//  Copyright © 2019 Bruno Torres D4. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController,CLLocationManagerDelegate, MKMapViewDelegate {

    let locationManager = CLLocationManager()
    
    @IBOutlet weak var mapa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        mapa.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone

        locationManager.startUpdatingLocation()
        
        mapa.showsUserLocation = true
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let region = MKCoordinateRegion(center: userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.008, longitudeDelta: 0.008))
        mapa.setRegion(region, animated: true)
    }
    
    
    @IBAction func agregarAnotacion(_ sender: UIButton) {
        let anotacion = PinAnnotacion()
        
        anotacion.coordinate = CLLocationCoordinate2D(latitude: 19.3275, longitude: -99.1824)
        
        anotacion.title =  "iOS Lab"
        anotacion.subtitle = "Nice place to work"
        anotacion.imageURL = "ubic"
        mapa.addAnnotation(anotacion)
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation{
            return nil
        }
        var pinAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "PinAnnotationView")
        
        if pinAnnotationView == nil{
            pinAnnotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "PinAnnotationView")
            
            pinAnnotationView?.canShowCallout = true
        }else{
            pinAnnotationView?.annotation = annotation
        }
        
        if let pinAnnotation = annotation as? PinAnnotacion{
            pinAnnotationView?.image = UIImage(named: pinAnnotation.imageURL)
        }
        
        return pinAnnotationView
    }
}
