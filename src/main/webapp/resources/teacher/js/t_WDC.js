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
        document.getElementById("thumbnailImg4").click();
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
                    document.getElementById("contentImg4").src = e.target.result;
                    break;
            }
        }
        reader.readAsDataURL(value.files[0]);
    }
};


function scheduleChange(t){
    let type = t.id;
    switch(type){
        case "individual" : document.getElementById("scheduleType").value = type; 
                            document.getElementById("dateTimeSetting").style.cursor="";
                            break;
        case "repeat" : document.getElementById("scheduleType").value = type; 
                        document.getElementById("dateTimeSetting").style.cursor="";
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
        case "individual" : document.getElementById("dateTimeSetting").dataset.target="#individualSetting";break;
        case "repeat" : document.getElementById("dateTimeSetting").dataset.target="#repeatSetting";break;
        default : alert("클래스타입을 선택해주세요"); break;
    }
};


