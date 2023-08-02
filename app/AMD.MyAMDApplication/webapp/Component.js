sap.ui.define(
    ["sap/fe/core/AppComponent"],
    function (Component) {
        "use strict";

        return Component.extend("AMD.MyAMDApplication.Component", {
            metadata: {
                manifest: "json"
            }
        });
    }
);