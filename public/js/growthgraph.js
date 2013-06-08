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
        var milestonesMet = cData['milestones_met'];
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

$(function() {
    var graph = new Graph($.parseJSON(tableData), $.parseJSON(childData));
});
