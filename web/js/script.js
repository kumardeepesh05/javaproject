/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function setOptions(choose) {
    var arr = new Array(6);
    for (var i = 1; i <= 6; i++) {
        arr[i] = new Array(10);
    }
    arr[1] = ["Amaze", "Brio", "City", "CR V"];
    arr[2] = ["Elantra", "EON", "Santra Fe", "Sentro", "Xcent"];
    arr[3] = ["Bolero", "Quanto", "Scorpio", "Verito", "XUV 500"];
    arr[4] = ["Maruti 800", "Alto 800", "Omni", "Swift", "Wagon R", "Kizashi"];
    arr[5] = ["Indica eV2", "Indigo CS", "Nano", "Safari", "Sumo", "Winger"];
    arr[6] = ["Camry", "Corolla Altis", "Innova", "New Fortuner"];    
    var x = document.formComp.carmodel1;
    x.options.length = 1;
    for (var i = 1; i <= 6; i++) {
        if (choose === i) {
            for (var j = 0; j < arr[i].length; j++) {
                x.options[x.options.length] = new Option(arr[i][j]);
            }
            break;
        }
    }
}
function setOptions1(choose) {
    var arr = new Array(6);
    for (var i = 1; i <= 6; i++) {
        arr[i] = new Array(10);
    }
    arr[1] = ["Amaze", "Brio", "City", "CR V"];
    arr[2] = ["Elentra", "EON", "Santra Fe", "Sentro", "Xcent"];
    arr[3] = ["Bolero", "Quanto", "Scorpio", "Verito", "XUV 500"];
    arr[4] = ["Maruti 800", "Alto 800", "Omni", "Swift", "Wagon R", "Kizashi"];
    arr[5] = ["Indica eV2", "Indigo CS", "Nano", "Safari", "Sumo", "Winger"];
    arr[6] = ["Camry", "Corolla Altis", "Innova", "New Fortuner"];    
    var x = document.formComp.carmodel2;
    x.options.length = 1;
    for (var i = 1; i <= 6; i++) {
        if (choose === i) {
            for (var j = 0; j < arr[i].length; j++) {
                x.options[x.options.length] = new Option(arr[i][j]);
            }
            break;
        }
    }
}
function check() {
    if ((loginForm.name.value === "" || loginForm.pass.value === "")) {
        alert("Please Fill all the information");
        return false;
    }
    return true;
}
function checkRegister() {
    if (formReg.name.value === "" || formReg.fathersname.value === "" || formReg.username.value === "" || formReg.pass.value === "" || formReg.email.value === "" || formReg.address.value === "" || formReg.pincode.value === "" || formReg.city.value === "" || formReg.state.value === "" || formReg.country.value === "" || formReg.contact.value === "") {
        alert("Please Fill all the information");
        return false;
    }
    return true;
}
function checkCompare() {
    if (formComp.carbrand1.value === "--Brand--" || formComp.carbrand2.value === "--Brand--" || formComp.carmodel1.value === "--Model--" || formComp.carmodel2.value === "--Model--") {
        alert("please Fill all the information");
        return false;
    }
    if (formComp.carmodel1.value === formComp.carmodel2.value && formComp.carbrand1.value === formComp.carbrand2.value) {
        alert("Please Choose Different Car for Comparison");
        formComp.carmodel1.value = "--Model--";
        formComp.carmodel2.value = "--Model--";
        formComp.carbrand1.value = "--Brand--";
        formComp.carbrand2.value = "--Brand--";
        return false;
    }
    return true;
}
function checkFeedback() {
    var name1 = formFeed.name.value;
    var email1 = formFeed.email.value;
    var mobile1 = formFeed.mobile.value;
    var comment1 = formFeed.comment.value;
    var city1 = formFeed.city.value;
    var state1 = formFeed.state.value;
    if (name1 === "" || email1 === "" || mobile1 === "" || comment1 === "" || city1 === "" || state1 === "") {
        alert("Please fill all the information");
        return false;
    }
    return true;
}
function checkSeller() {
    var brand1 = form1.brand.value;
    var model1 = form1.model.value;
    var price1 = form1.price.value;
    var fuel1 = form1.fuel.value;
    var mileage1 = form1.mileage.value;
    var fuelcap1 = form1.fuelcap.value;
    var seatcap1 = form1.seatcap.value;
    var engine1 = form1.engine.value;
    var power1 = form1.power.value;
    var torque1 = form1.torque.value;
    if (brand1 === "" || model1 === "" || fuel1 === "---select---" || price1 === "" || mileage1 === "" || fuelcap1 === "" || seatcap1 === "" || engine1 === "" || power1 === "" || torque1 === "") {
        alert("Please fill all the information");
        return false;
    }
    return true;
}
function checkPurchase() {
    if (formPur.fuellist.value === "---select---" || formPur.pricelist.value === "---select---") {
        alert("Please fill all the information");
        return false;
    }
    return true;
}
function selectModel() {
    alert("inside 2nd script");
}