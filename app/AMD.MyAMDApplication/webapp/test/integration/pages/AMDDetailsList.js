sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'AMD.MyAMDApplication',
            componentId: 'AMDDetailsList',
            entitySet: 'AMDDetails'
        },
        CustomPageDefinitions
    );
});