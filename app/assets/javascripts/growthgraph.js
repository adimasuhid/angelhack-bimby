"use strict";


//column class
function Column(monthNum) {
    var month = monthNum;
    var advance;
    var normal;
    var delay;
    
    this.addData = function (cData) {

    }

    this.getMonth = function(){
        return month;
    }
}


//growth analyzer class
function GrowthAnalyzer(baseData) {
    var baseHash = {}; 
    baseDataToHash(baseData);

    function baseDataToHash(base) {
        for (var i = 0; i < base.length; i++) {
            var monthNumber = Number((base[i].month).split('_')[1]);
            baseHash[base[i].name] =  monthNumber;
        }
    }

    this.analyze = function(cData) {
        var growthMilestoneAchieved = Number((cData.month_achieved).split('_')[1]);
        var result;
        if (growthMilestoneAchieved == baseHash[cData.name]) {
            result = 0;
        } else if (growthMilestoneAchieved < baseHash[cData.name]) {
            result = 1;
        } else {
            result = -1;
        }
        
        return result;
    }
}


//graph class
function Graph(gData, cData) {
    var growthAnalyzer = new GrowthAnalyzer(gData['milestones']);
    createColumns(gData, cData);

    this.addGraph = function(numColumn, month) {

    }

    function createColumns(gData, cData) {
        var milestonesMet = cData['milestones'];
        var columnsHash = {};
        //run through the months to create
        for (var i = 0; i < milestonesMet.length; i++) {
            console.log(milestonesMet[i].name);
            if (columnsHash.hasOwnProperty(milestonesMet[i].month_achieved)) {
                
            } else {
                growthAnalyzer.analyze(milestonesMet[i]);
                //var col = new Column(milestonesMet[i].month_achieved,milestonesMet[i]);
                //columnsHash[milestonesMet[i].month_achieved];
            }
        }
    }

    function createTable(gData) {
    }

    function populateTable(cData){
    }
}

