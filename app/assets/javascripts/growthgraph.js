"use strict";

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
function Graph(gData, cData, photos) {
    var growthAnalyzer = new GrowthAnalyzer(gData['milestones']);
    var columns = createColumns(gData, cData);

    this.addGraph = function(numColumn, month) {

    }

    this.logColumns = function (numColumn, month) {
        console.log(columns);
        for (var prop in columns) {
            var month_block = "<div class='month-block "+prop+"'><div class='month-row advanced'></div><div class='month-row regular'></div><div class='month-row delayed'></div><div class='month-name'>"+prop+"</div></div>";
            $("#growth").prepend(month_block);

            console.log("Header " + prop)
            var col = columns[prop];

            var normalArr = col.getNormal(); 
            var advanceArr = col.getAdvance();
            var delayArr = col.getDelay();

            for (var i = 0; i < normalArr.length; i ++) {
                console.log (normalArr[i].name +" "+ normalArr[i].month_achieved + " Dx:Normal");
                var normal= createGraphView(normalArr[i].name, photos ,normalArr[i].description)
                $("."+prop+" .normal").append(normal);
            }
            for (var i = 0; i < advanceArr.length; i ++) {
                console.log (advanceArr[i].name +" "+ advanceArr[i].month_achieved + " Dx:Advanced");
                var advance = createGraphView(advanceArr[i].name, photos, advanceArr[i].description)
                $("."+prop+" .advanced").append(advance);
            }
            for (var i = 0; i < delayArr.length; i ++) {
                console.log (delayArr[i].name +" "+ delayArr[i].month_achieved + " Dx:Delayed");
                var delay = createGraphView(delayArr[i].name, photos, delayArr[i].description)
                $("."+prop+" .delayed").append(delay);
            }
        }
    }

    function createGraphView(name,photo,description){
      var html = "<div class='hover-details'>"+name+"</div>";
      return html;
    }

    function createColumns(gData, cData) {
        var milestonesMet = cData['milestones'];
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

