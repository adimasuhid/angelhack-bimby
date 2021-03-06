"use strict";

var tableData = JSON.stringify({
                    "milestones": [
                                        {
                                            "name":"Palmar Grasp",
                                            "month":"month_1"
                                        },
                                        {
                                            "name":"Head Rotation",
                                            "month":"month_4"
                                        },
                                        {
                                            "name":"Rolls Over",
                                            "month":"month_5"
                                        },
                                        {
                                            "name":"Stands Alone",
                                            "month":"month_12"
                                        },
                                        {
                                            "name":"Walks Alone",
                                            "month":"month_15"
                                        }
                                  ]
                });

var childData = JSON.stringify({
                    "name": "Ace Dimasuhid",
                    "birthday" : "April 26, 1987",
                    "sex" : "Male",
                    "milestones_met" : [ 
                                            { 
                                                "name":"Head Rotation", 
                                                "month_achieved":"month_5"
                                            },
                                            {
                                                "name":"Rolls Over",
                                                "month_achieved":"month_3"
                                            },
                                            {
                                                "name":"Stands Alone",
                                                "month_achieved":"month_12"
                                            }
                    ]
                });

//column class
function Column(monthNum) {
    var month = monthNum;
    var advance = [];
    var normal= [];
    var delay = [];
    
    this.addData = function (cData, analysis) {
        if (analysis == 0) {
            normal.push(cData);
        } else if (analysis > 0) {
            advance.push(cData); 
        } else {
            delay.push(cData);
        }
    }

    this.getAdvance = function () {
        return advance;
    }

    this.getNormal = function () {
        return normal;
    }

    this.getDelay = function() {
        return delay;
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
    var columns = createColumns(gData, cData);

    this.addGraph = function(numColumn, month) {

    }

    this.logColumns = function (numColumn, month) {
        for (var prop in columns) {
            console.log("Header " + prop)
            var col = columns[prop];

            var normalArr = col.getNormal(); 
            var advanceArr = col.getAdvance();
            var delayArr = col.getDelay();

            for (var i = 0; i < normalArr.length; i ++) {
                console.log (normalArr[i].name +" "+ normalArr[i].month_achieved + " Dx:Normal");
            }
            for (var i = 0; i < advanceArr.length; i ++) {
                console.log (advanceArr[i].name +" "+ advanceArr[i].month_achieved + " Dx:Advanced");
            }
            for (var i = 0; i < delayArr.length; i ++) {
                console.log (delayArr[i].name +" "+ delayArr[i].month_achieved + " Dx:Delayed");
            }
        }
    }

    function createColumns(gData, cData) {
        var milestonesMet = cData['milestones_met'];
        var columnsHash = {};

        //run through the months to create
        for (var i = 0; i < milestonesMet.length; i++) {
            var milestone = milestonesMet[i];

            if (columnsHash.hasOwnProperty(milestone.month_achieved)) {
                columnsHash[milestone.month_achieved].addData(milestone, growthAnalyzer.analyze(milestone));
            } else {
                var col = new Column(milestone.month_achieved);
                col.addData(milestone, growthAnalyzer.analyze(milestone));
                columnsHash[milestone.month_achieved] = col;
            }
        }

        return columnsHash;
    }

    function createGraph(gData) {
    }

    function populateTable(cData){
    }

}

$(function() {
    var graph = new Graph($.parseJSON(tableData), $.parseJSON(childData));
    graph.logColumns();
});
