sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'AMD/MyAMDApplication/test/integration/FirstJourney',
		'AMD/MyAMDApplication/test/integration/pages/AMDDetailsList',
		'AMD/MyAMDApplication/test/integration/pages/AMDDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, AMDDetailsList, AMDDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('AMD/MyAMDApplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAMDDetailsList: AMDDetailsList,
					onTheAMDDetailsObjectPage: AMDDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);