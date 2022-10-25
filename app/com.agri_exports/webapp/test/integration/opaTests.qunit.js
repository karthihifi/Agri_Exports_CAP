sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/agriexports/com/agriexports/test/integration/FirstJourney',
		'com/agriexports/com/agriexports/test/integration/pages/ProcurementList',
		'com/agriexports/com/agriexports/test/integration/pages/ProcurementObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProcurementList, ProcurementObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/agriexports/com/agriexports') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProcurementList: ProcurementList,
					onTheProcurementObjectPage: ProcurementObjectPage
                }
            },
            opaJourney.run
        );
    }
);