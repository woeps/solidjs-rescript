// Generated by ReScript, PLEASE EDIT WITH CARE

import * as SolidJs from "solid-js";
import H from "solid-js/h";
import * as HyperScript from "./HyperScript.bs.js";

function createElement(param, _unit) {
  var match = SolidJs.createSignal(10);
  var setCount = match[1];
  var count = match[0];
  var timer = setInterval((function (param) {
          console.log("Hello!", count());
          return setCount(function (previousCount) {
                      return previousCount + 1 | 0;
                    });
        }), 1000);
  SolidJs.onCleanup(function (param) {
        clearInterval(timer);
        
      });
  return H("div", HyperScript.Props.none, (function (param) {
                return [
                        (function (param) {
                            return "Counter: " + String(count());
                          }),
                        (function (param) {
                            return H("button", {
                                        onClick: (function (param) {
                                            return setCount(function (previousCount) {
                                                        return previousCount - 3 | 0;
                                                      });
                                          })
                                      }, (function (param) {
                                          return "reduce";
                                        }));
                          })
                      ];
              }));
}

export {
  createElement ,
  
}
/* solid-js Not a pure module */
