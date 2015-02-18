/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function checkCompareMobile() {
    if (formCompMobile.mobilebrand1.value === "--Brand--" || formCompMobile.mobilebrand2.value === "--Brand--" || formCompMobile.mobilemodel1.value === "--Model--" || formCompMobile.mobilemodel2.value === "--Model--") {
        alert("please Fill all the information");
        return false;
    }
    if (formCompMobile.mobilemodel1.value === formCompMobile.mobilemodel2.value && formCompMobile.mobilebrand1.value === formCompMobile.mobilebrand2.value) {
        alert("Please Choose Different Mobile for Comparison");
        formCompMobile.mobilemodel1.value = "--Model--";
        formCompMobile.mobilemodel2.value = "--Model--";
        formCompMobile.mobilebrand1.value = "--Brand--";
        formCompMobile.mobilebrand2.value = "--Brand--";
        return false;
    }
    return true;
}
function setOptionsMobile(choose) {
    var arr = new Array(6);
    for (var i = 1; i <= 6; i++) {
        arr[i] = new Array(10);
    }
    arr[1] = ["Asha 501", "Lumia 1020", "C6-01", "XL", "N810"];
    arr[2] = ["Galaxy Star GT-S5282", "S5050", "MAX F679", "i8000 Omnia ll", "Galaxy Mini"];
    arr[3] = ["Xperia A", "Nexus X", "Tablet P 3G", "S1", "Xperia GX"];
    arr[4] = ["iPad CDMA", "iPad 2 WiFi with 3G", "iPad 3 WiFi 4G", "iPhone 3GS", "iWatch"];
    arr[5] = ["A89 Ninja", "Bolt A068", "Canvas 4 A210", "Funbook P365", "X234 Plus"];
    arr[6] = ["Boss M-5470", "C-4600n", "Flo Tv M-5910", "M6363", "Stellar Mi-600"];
    
    var x = document.formCompMobile.mobilemodel1;
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
function setOptionsMobile1(choose) {
    var arr = new Array(6);
    for (var i = 1; i <= 6; i++) {
        arr[i] = new Array(10);
    }
    arr[1] = ["Asha 501", "Lumia 1020", "C6-01", "XL", "N810"];
    arr[2] = ["Galaxy Star GT-S5282", "S5050", "MAX F679", "i8000 Omnia ll", "Galaxy Mini"];
    arr[3] = ["Xperia A", "Nexus X", "Tablet P 3G", "S1", "Xperia GX"];
    arr[4] = ["iPad CDMA", "iPad 2 WiFi with 3G", "iPad 3 WiFi 4G", "iPhone 3GS", "iWatch"];
    arr[5] = ["A89 Ninja", "Bolt A068", "Canvas 4 A210", "Funbook P365", "X234 Plus"];
    arr[6] = ["Boss M-5470", "C-4600n", "Flo Tv M-5910", "M6363", "Stellar Mi-600"];
    
    var x = document.formCompMobile.mobilemodel2;
    x.options.length = 1;
    for (var i = 1; i <= 16; i++) {
        if (choose === i) {
            for (var j = 0; j < arr[i].length; j++) {
                x.options[x.options.length] = new Option(arr[i][j]);
            }
            break;
        }
    }
}
function checkPurchaseMobile() {
    if (formPurMobile.pricemobile.value === "---select---") {
        alert("Please fill all the information");
        return false;
    }
    return true;
}
function checkSellerMobile() {
    var brand1 = formSellerMobile.brand.value;
    var model1 = formSellerMobile.model.value;
    var price1 = formSellerMobile.price.value;
    var processor1 = formSellerMobile.processor.value;
    var intmem1 = formSellerMobile.intmem.value;
    var ram1 = formSellerMobile.ram.value;
    var scrsize1 = formSellerMobile.scrsize.value;
    var os1 = formSellerMobile.os.value;
    var sim1 = formSellerMobile.sim.value;
    if (brand1 === "" || model1 === "" || price1 === "" || processor1 === "" || intmem1 === "" || ram1 === "" || scrsize1 === "" || os1 === "" || sim1 === "") {
        alert("Please fill all the information");
        return false;
    }
    return true;
}

