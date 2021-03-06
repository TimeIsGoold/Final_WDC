const $contentImgArea1 = document.getElementById("contentImgArea1");
const $contentImgArea2 = document.getElementById("contentImgArea2");
const $contentImgArea3 = document.getElementById("contentImgArea3");
const $contentImgArea4 = document.getElementById("contentImgArea4");
const $contentImgArea5 = document.getElementById("contentImgArea5");

if($contentImgArea1 != null){
    $contentImgArea1.onclick = function () {
        document.getElementById("thumbnailImg1").click();
    };
};

if($contentImgArea2 != null){
    $contentImgArea2.onclick = function () {
        document.getElementById("thumbnailImg2").click();
    };
}

if($contentImgArea3 != null){
    $contentImgArea3.onclick = function () {
        document.getElementById("thumbnailImg3").click();
    };
}

if($contentImgArea4 != null){
    $contentImgArea4.onclick = function () {
        document.getElementById("thumbnailImg4").click();
    };
}

if($contentImgArea5 != null){
    $contentImgArea5.onclick = function () {
        document.getElementById("thumbnailImg5").click();
    };
}

function loadImg(value, num) {
    if (value.files && value.files[0]) {
        const reader = new FileReader();
        reader.onload = function (e) {
            switch (num) {
                case 1:
                    document.getElementById("contentImg1").src = e.target.result;
                    break;
                case 2:
                    document.getElementById("contentImg2").src = e.target.result;
                    break;
                case 3:
                    document.getElementById("contentImg3").src = e.target.result;
                    break;
                case 4:
                    document.getElementById("contentImg4").src = e.target.result;
                    break;
                case 5:
                    document.getElementById("contentImg5").src = e.target.result;
                    break;
            }
        }
        reader.readAsDataURL(value.files[0]);
    }
};


function scheduleChange(t){
    let type = t.id;
    var a = "";

    switch(type){
        case "individual" : 
            document.getElementById("individual").className = "schedule-select"; 
            document.getElementById("repeat").className ="schedule-none"; break;
        case "repeat" :
            document.getElementById("individual").className = "schedule-none"; 
            document.getElementById("repeat").className ="schedule-select"; break;
    }

    if(document.getElementById("scheduleType").value.length > 0){
        
        switch(document.getElementById("scheduleType").value){
            
            case "I" : a = "individual"; break;
            case "D" : a = "repeat"; break;
        }
        
        if(a==type){
            return;
        }
        if(confirm("????????? ????????? ???????????? ?????? ???????????????. ?????????????????????????")){
            
        } else {
            switch(a){
                case "individual" :  
                document.getElementById("individual").className = "schedule-select"; 
                document.getElementById("repeat").className ="schedule-none"; break;
                case "repeat" : 
                document.getElementById("individual").className = "schedule-none"; 
                document.getElementById("repeat").className ="schedule-select"; break;
            }
            return;
        }
    }
    
    document.getElementById("scheduleList").innerHTML = "???????????? ??????????????????";
    let repeatTable = document.getElementById("repeatTable");
    let scheduleTable = document.getElementById("scheduleDetail");

    repeatTable.innerHTML = "";
    scheduleTable.innerHTML = "";
    
    let inputDate = document.getElementsByName("inputDate");
    let scheduleStart =  document.getElementsByName("scheduleStart");
    let inputMin = document.getElementsByName("inputMin");
    let inputMax = document.getElementsByName("inputMax");
    
    if(inputDate.length > 0){
        for(var i = 0; i < inputDate.length; i++){
            inputDate.remove();
        }
    }
    if(scheduleStart.length > 0){
        for(var i = 0; i < scheduleStart.length; i++){
            scheduleStart.remove();
        }
    }
    if(inputMin.length > 0){
        for(var i = 0; i < inputMin.length; i++){
            inputMins.remove();
        }
    }
    if(inputMax.length > 0){
        for(var i = 0; i < inputMax.length; i++){
            inputMax.remove();
        }
    }
    
    repeatTable.innerHTML += "<tr style='background-color: #f5f5f5;'><th>????????????</th><th>?????? ??????</th><th>??????????????????</th><th>??????</th></tr>"; 
    scheduleTable.innerHTML += "<tr style='background-color: #f5f5f5;'><th>????????????</th><th>?????? ??????</th><th>??????????????????</th><th>??????</th></tr>"; 
    switch(type){
        case "individual" : document.getElementById("scheduleType").value = "I"; 
                            document.getElementById("dateTimeSetting").style.cursor="";
                            document.getElementById("individual").class="schedule-select";
                            document.getElementById("repeat").class="schedule-none";
                            break;
        case "repeat" : document.getElementById("scheduleType").value = "D"; 
                        document.getElementById("dateTimeSetting").style.cursor="";
                        document.getElementById("individual").class="schedule-none";       
                        document.getElementById("repeat").class="schedule-select";
                        break;
        case "always" : document.getElementById("scheduleType").value = type; 
                        document.getElementById("dateTimeSetting").style.cursor="not-allowed";
                        break;
    }             
};

function doPopUP(){
    let type = document.getElementById("scheduleType").value;
    console.dir(document.getElementById("dateTimeSetting"));
    switch(type){
        case "I" : document.getElementById("dateTimeSetting").dataset.target="#individualSetting";break;
        case "D" : document.getElementById("dateTimeSetting").dataset.target="#repeatSetting";break;
        default : alert("?????????????????? ??????????????????"); break;
    }
};

function setCurriculum(){

    let curriName = document.getElementById("curriName").value;
    let curriContent = document.getElementById("curriContent").value;
    let step = document.getElementById("selectStep").value;
    
    if(curriName == null || curriName.length ==0){
        alert("???????????? ????????? ???????????????.");
        return;
    }
    if(curriContent == null || curriContent.length ==0){
        alert("???????????? ????????? ???????????????.");
        return;
    }

    let curriTable = document.getElementById("curriculum");
    
    if(document.getElementById("noneCurri") != null){
    
        document.getElementById("noneCurri").remove();
    }
    
    let hiddeName = "<input type='hidden' value='" +curriName + "'name='curriTitle'>";
    let hiddeContent = "<input type='hidden' value='" +curriContent + "'name='curriContent'>";
    let hiddeStep = "<input type='hidden' value='" +step + "'name='curriStep'>";
    curriTable.innerHTML += "<tr><td>" 
                         + step +"??????</td><td>" 
                         + curriName + "</td><td>" 
                         + curriContent +"</td></tr>"
                         + hiddeName + hiddeContent + hiddeStep;
    document.getElementById("curriName").value = "";   
    document.getElementById("curriContent").value ="";                  
    document.getElementById("selectStep").value = Number(step)+1;                    
};

function resetCurriculum(){

    if(confirm("????????? ??????????????? ?????? ???????????????.\n????????? ???????????????????")){
        let curriTable = document.getElementById("curriculum");
        curriTable.innerHTML = "<tr><th>??????</th><th>??????</th><th style='width: 60%;'>??????</th></tr><tr><td colspan='3'align='center' id='noneCurri' value='0' name='curriStep'>????????? ??????????????? ????????????.</td></tr>"
        document.getElementById("selectStep").value = 1;
    } else {
        return;
    }
}

function addSchedule(){
    let addInfo = document.getElementsByName("lectureSchedule");
    let scheduleTable = document.getElementById("scheduleDetail");
    let week = ['???','???','???','???','???','???','???'];
    let dayOfWeek = week[new Date(addInfo[0].value).getDay()]; 
    let hiddenDay = "<input type='hidden' value='" + addInfo[0].value + "' name='inputDate'>";
    let hiddenStartT = "<input type='hidden' value='" + addInfo[1].value+":"+ addInfo[2].value + "' name='scheduleStart'>";
    let minP = "<input type='hidden' value='" + addInfo[3].value + "' name='inputMin'>";
    let maxP = "<input type='hidden' value='" + addInfo[4].value + "' name='inputMax'>";
    let Id = addInfo[0].value + addInfo[1].value;
    scheduleTable.innerHTML += "<tr><td name='scheduleTable1'>"+addInfo[0].value + "(" + dayOfWeek + ")"
                             + "</td><td name='scheduleTable2'>"+addInfo[1].value + " : "+ addInfo[2].value 
                             + "</td><td name='scheduleTable3'> ?????? "+ addInfo[3].value + "??? ~ ?????? " + addInfo[4].value + "??? </td></td><td><button type='button' id='"+Id +"'style='color:white; background-color:red; border-radius:5px; border:0px;' onclick='removeSchedule(this);'>??????</button></td></tr>"
                             + hiddenDay + hiddenStartT + minP + maxP
};



function addDayRepeat(){
    let inputData = document.getElementsByName("lectureSchedule2");
    let startDate = new Date(document.getElementById("start").value);
    let endDate = new Date(document.getElementById("end").value);

    let selectWeek = document.getElementsByName("dayName");
    let weekArr = [];
    let weekList = ['???','???','???','???','???','???','???'];
    
    let repeatTable = document.getElementById("repeatTable");
    	
    for(var i = 0; i < selectWeek.length; i++){
        if(selectWeek[i].checked){
            weekArr.push(selectWeek[i].value);
        }
    }
    
    let dayMinus = (endDate.getTime() - startDate.getTime())/(1000*60*60*24) +1 ;
    
    for(var i = 0; i < dayMinus; i++){
    	let date = new Date(startDate);
        date.setDate(startDate.getDate() + i);
    	
            for(var j = 0; j < weekArr.length; j ++){
        	
            if(date.getDay() == weekArr[j]){
                
                //?????? ??????
                let year = date.getFullYear()
                let month = date.getMonth() + 1
                month = month >= 10 ? month : '0' + month
                let day = date.getDate();
                day = day >= 10 ? day : '0' + day
                let purchaseDay = year + '-' + month + '-' + day;
                let dayOfWeek = weekList[weekArr[j]];

                //????????????
                let hiddenDay = "<input type='hidden' value='" + purchaseDay + "' name='inputDate'>";
                let hiddenStartT = "<input type='hidden' value='" + inputData[0].value+":"+ inputData[1].value + "' name='scheduleStart'>";
                let minP = "<input type='hidden' value='" + inputData[2].value + "' name='inputMin'>";
                let maxP = "<input type='hidden' value='" + inputData[3].value + "' name='inputMax'>";            
                let Id = purchaseDay + inputData[0].value +":"+ inputData[1].value;
                repeatTable.innerHTML += "<tr><td name='scheduleTable1'>"+ purchaseDay + "(" + dayOfWeek + ")"
                             + "</td><td name='scheduleTable2'>"+inputData[0].value + " : "+ inputData[1].value 
                             + "</td><td name='scheduleTable3'> ?????? "+ inputData[2].value + "??? ~ ?????? " + inputData[3].value + "??? </td></td><td><button type='button' id='"+Id+"'style='color:white; background-color:red; border-radius:5px; border:0px;' onclick='removeSchedule(this);'>??????</button></td></tr>"
                             + hiddenDay + hiddenStartT + minP + maxP;
            }
        }
    }
}

function scheduleWrite(){
    
    document.getElementById("scheduleList").innerHTML = "";
    let writeDate = document.getElementsByName("scheduleTable1");
    let writeTime = document.getElementsByName("scheduleTable2");
    let writePeople = document.getElementsByName("scheduleTable3");

    for(var i = 0; i < writeDate.length; i++){
        document.getElementById("scheduleList").innerHTML += "????????????  :  " + writeDate[i].innerHTML + "    ||  ????????????  :  " + writeTime[i].innerHTML + "   ||   " + writePeople[i].innerHTML + "<br>"
    }
}

function regularScheduleAdd(){

    let startDate = document.getElementById("regularStart").value;
    let endDate = document.getElementById("regularEnd").value;

    let regurlaScheduleInfo = document.getElementsByName("regularInputInfo");
    let regulsrScheduleTable = document.getElementById("regularTable");

    regulsrScheduleTable.innerHTML = "<tr style='background-color: #f5f5f5;'><th style='width:35%'>????????????</th><th style='width:15%'>?????? ??????</th><th style='width:25%;'>??????????????????</th><th style='width:15%'>????????????</th><th style='width:10%'>??????</th></tr>";;
    let week = ['???','???','???','???','???','???','???'];
    let dayOfWeekStart = week[new Date(startDate).getDay()]; 
    let dayOfWeekEnd = week[new Date(endDate).getDay()]; 
    let hiddenDay = "<input type='hidden' value='" + startDate + "' name='inputDate'>";
    let hiddenStartT = "<input type='hidden' value='" + regurlaScheduleInfo[0].value+":"+ regurlaScheduleInfo[1].value + "' name='scheduleStart'>";
    let minP = "<input type='hidden' value='" + regurlaScheduleInfo[2].value + "' name='inputMin'>";
    let maxP = "<input type='hidden' value='" + regurlaScheduleInfo[3].value + "' name='inputMax'>";
    let expectCount = "<input type='hidden' value='" + regurlaScheduleInfo[4].value + "' name='ScheduleCount'>";
    regulsrScheduleTable.innerHTML += "<tr><td name='regularTable1'>"+startDate + "(" + dayOfWeekStart + ")  ~  " + endDate +"(" + dayOfWeekEnd + ")" 
                             + "</td><td name='regularTable2'>"+regurlaScheduleInfo[0].value + " : "+ regurlaScheduleInfo[1].value 
                             + "</td><td name='regularTable3'> ?????? "+ regurlaScheduleInfo[2].value + "??? ~ ?????? " + regurlaScheduleInfo[3].value 
                             + "??? </td><td name='regularTable4'>"+ regurlaScheduleInfo[4].value +"???</td><td><button type='button' onclick='deleteSchedule();' style='color:white; background-color:red; border-radius:5px; border:0px;' >??????</button></td></tr>"
                             + hiddenDay + hiddenStartT + minP + maxP + expectCount;

}

function regularRegist(){
    
    document.getElementById("regularList").innerHTML = "";
    let writeDate = document.getElementsByName("regularTable1");
    let writeTime = document.getElementsByName("regularTable2");
    let writePeople = document.getElementsByName("regularTable3");
    let expectCount = document.getElementsByName("regularTable4");

    document.getElementById("regularList").innerHTML += "????????????  :  " + writeDate[0].innerHTML + "    ||  ????????????  :  " + writeTime[0].innerHTML + "   ||   " + writePeople[0].innerHTML + "  ||  ????????????  :  " + expectCount[0].innerHTML+"<br>";
}

function deleteSchedule(){

    if(confirm("????????? ???????????? ????????? ?????????. ??????????????????????????")){
        document.getElementById("regularTable").innerHTML = "<tr style='background-color: #f5f5f5;'><th style='width:35%'>????????????</th><th style='width:15%'>?????? ??????</th><th style='width:25%;'>??????????????????</th><th style='width:15%'>????????????</th><th style='width:10%'>??????</th></tr>";
    } else {
        return;
    }
}

function removeSchedule(p){
    if(confirm("????????? ???????????? ?????? ?????????.")){
        var child = document.getElementById(p.id);

        child.parentElement.parentElement.remove();
    } else {
        return;
    }
}

