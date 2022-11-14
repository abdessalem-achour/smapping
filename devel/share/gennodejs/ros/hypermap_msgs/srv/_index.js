
"use strict";

let GetIntsByArea = require('./GetIntsByArea.js')
let GetSemanticByArea = require('./GetSemanticByArea.js')
let StoreMap = require('./StoreMap.js')
let GetStringAtPoint = require('./GetStringAtPoint.js')
let GetLocationsByInt = require('./GetLocationsByInt.js')
let GetIntAtPoint = require('./GetIntAtPoint.js')
let GetLocationsByString = require('./GetLocationsByString.js')
let GetStringsByArea = require('./GetStringsByArea.js')
let LoadMap = require('./LoadMap.js')
let GetSemanticByString = require('./GetSemanticByString.js')

module.exports = {
  GetIntsByArea: GetIntsByArea,
  GetSemanticByArea: GetSemanticByArea,
  StoreMap: StoreMap,
  GetStringAtPoint: GetStringAtPoint,
  GetLocationsByInt: GetLocationsByInt,
  GetIntAtPoint: GetIntAtPoint,
  GetLocationsByString: GetLocationsByString,
  GetStringsByArea: GetStringsByArea,
  LoadMap: LoadMap,
  GetSemanticByString: GetSemanticByString,
};
