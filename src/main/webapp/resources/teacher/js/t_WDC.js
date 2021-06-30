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
        default : alert("클래스타입을 선택해주세요"); break;
    }
};

function addSchedule(){
    let addInfo = document.getElementsByName("lectureSchedule");
    let scheduleTable = document.getElementById("scheduleDetail");
    let week = ['일','월','화','수','목','금','토'];
    let dayOfWeek = week[new Date(addInfo[0].value).getDay()]; 
    let hiddenDay = "<input type='hidden' value='" + addInfo[0].value + "' name='inputDate'>";
    let hiddenStartT = "<input type='hidden' value='" + addInfo[1].value+":"+ addInfo[2].value + "' name='ScheduleStart'>";
    let minP = "<input type='hidden' value='" + addInfo[3].value + "' name='inputMin'>";
    let maxP = "<input type='hidden' value='" + addInfo[4].value + "' name='inputMax'>";
    scheduleTable.innerHTML += "<tr><td>"+addInfo[0].value + "(" + dayOfWeek + ")"
                             + "</td><td>"+addInfo[1].value + " : "+ addInfo[2].value 
                             + "</td><td> 최소 "+ addInfo[3].value + "명 ~ 최대 " + addInfo[4].value + "명 </td></td><td><button type='button'>삭제</button></td></tr>"
                             + hiddenDay + hiddenStartT + minP + maxP
}

function setCurriculum(){

    let curriName = document.getElementById("curriName").value;
    let curriContent = document.getElementById("curriContent").value;
    let step = document.getElementById("selectStep").value;
    
    let curriTable = document.getElementById("curriculum");
    
    if(document.getElementById("noneCurri") != null){
    
        document.getElementById("noneCurri").remove();
    }
    let hiddeName = "<input type='hidden' value='" +curriName + "'name='curriTitle'>";
    let hiddeContent = "<input type='hidden' value='" +curriContent + "'name='curriContent'>";
    let hiddeStep = "<input type='hidden' value='" +step + "'name='curriStep'>";
    curriTable.innerHTML += "<tr><td>" 
                         + step +"단계</td><td>" 
                         + curriName + "</td><td>" 
                         + curriContent +"</td><td><button type='button'>수정</button></td></tr>"
                         + hiddeName + hiddeContent + hiddeStep;
    document.getElementById("curriName").value = "";   
    document.getElementById("curriContent").value ="";                  
    document.getElementById("selectStep").value = Number(step)+1;                    
}










