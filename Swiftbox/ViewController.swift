import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        RMConfiguration.sharedInstance().accessToken = "pk.eyJ1IjoianVzdGluIiwiYSI6IlpDbUJLSUEifQ.4mG8vhelFMju6HpIY-Hi5A"
        let source = RMMapboxSource(mapID: "mapbox.streets")
        let map = RMMapView(frame: view.bounds, andTilesource: source)
        map.zoom = 16
        map.centerCoordinate = CLLocationCoordinate2D(latitude: 38.913175, longitude: -77.032458)

        view.addSubview(map)
    }

}
