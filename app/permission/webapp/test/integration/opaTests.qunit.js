sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'per/test/permission/test/integration/FirstJourney',
		'per/test/permission/test/integration/pages/permissionList',
		'per/test/permission/test/integration/pages/permissionObjectPage'
    ],
    function(JourneyRunner, opaJourney, permissionList, permissionObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('per/test/permission') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThepermissionList: permissionList,
					onThepermissionObjectPage: permissionObjectPage
                }
            },
            opaJourney.run
        );
    }
);