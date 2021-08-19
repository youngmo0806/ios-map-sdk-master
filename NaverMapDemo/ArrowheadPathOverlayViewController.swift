 /*
  Copyright 2018-2021 NAVER Corp.
  
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
  
  http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  */


import UIKit
import NMapsMap

class ArrowheadPathOverlayViewController: MapViewController {

    let coord = [NMGLatLng(lat: 37.568003, lng: 126.9772503),
                  NMGLatLng(lat: 37.5701573, lng: 126.9772503),
                  NMGLatLng(lat: 37.5701573, lng: 126.9793745)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let turnSignalOverlay = NMFArrowheadPath(coord)
        turnSignalOverlay?.width = 10
        turnSignalOverlay?.color = UIColor.white
        turnSignalOverlay?.outlineWidth = 2
        turnSignalOverlay?.outlineColor = primaryColor
        turnSignalOverlay?.mapView = mapView
    }

}
