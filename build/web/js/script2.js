/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function checkCompareLaptop() {
    if (formCompLaptop.laptopbrand1.value === "--Brand--" || formCompLaptop.laptopbrand2.value === "--Brand--" || formCompLaptop.laptopmodel1.value === "--Model--" || formCompLaptop.laptopmodel2.value === "--Model--") {
        alert("please Fill all the information");
        return false;
    }
    if (formCompLaptop.laptopmodel1.value === formCompLaptop.laptopmodel2.value && formCompLaptop.laptopbrand1.value === formCompLaptop.laptopbrand2.value) {
        alert("Please Choose Different Laptop for Comparison");
        formCompLaptop.laptopmodel1.value = "--Model--";
        formCompLaptop.laptopmodel2.value = "--Model--";
        formCompLaptop.laptopbrand1.value = "--Brand--";
        formCompLaptop.laptopbrand2.value = "--Brand--";
        return false;
    }
    return true;
}
function setOptionsLaptop(choose) {
    var arr = new Array(7);
    for (var i = 1; i <= 7; i++) {
        arr[i] = new Array(10);
    }
    arr[1] = ["Vostro 2420- V520813IN8", "Vostro 3560- V520958IN8", "Inspiron 15- W540320IN8", "Latitude 14 3000- W720783IN8", "Latitude 14 3000- W721175IN8", "Alienware 14- W540901IN8"];
    arr[2] = ["15-R036TU (J6L69PA)", "Pavilion 15-P029TX (J2C48PA)", "Pavilion 15-N260TX (G2H02PA)", "Pavilion 15-P003TX (G8D93PA)", "Pavilion 15-P073TX (J6L90PA)"];
    arr[3] = ["NP300E5E-A04IN", "NP300E5V-S02IN", "NP370R5E-S03IN", "NP550P5C-S06IN", "NP300E5E-A03IN"];
    arr[4] = ["MacBook MC516HN/A", "MacBook Pro MB990LL/A", "MacBook Pro MB991LL/A", "MacBook Pro MC373HN/A", "MacBook Pro MC372HN/A"];
    arr[5] = ["Essential G580 (59-362301)", "Essential G580 (59-324064)", "IdeaPad Z580 (59-370239)", "IdeaPad G400S (59-383645)", "IdeaPad Z510 (59-387061)"];
    arr[6] = ["VAIO Fit 15E- SVF15413SNB", "VAIO 14- SVE14135CNB", "VAIO 14- SVE1413XPNB", "VAIO Fit 14A- SVF14N16SNS", "VAIO Fit 15A- SVF15N12SNS", "VAIO Fit 15A- SVF15N17SNS"];
    arr[7] = ["Satellite C50A- E0011", "Satellite C50-A I0017", "Satellite C50-A X3110", "Portege R930-X0111", "Portege R30-A X0433", "Portege Z30-A Y0433"];
    
    var x = document.formCompLaptop.laptopmodel1;
    x.options.length = 1;
    for (var i = 1; i <= 7; i++) {
        if (choose === i) {
            for (var j = 0; j < arr[i].length; j++) {
                x.options[x.options.length] = new Option(arr[i][j]);
            }
            break;
        }
    }
}
function setOptionsLaptop1(choose) {
    var arr = new Array(7);
    for (var i = 1; i <= 7; i++) {
        arr[i] = new Array(10);
    }
    arr[1] = ["Vostro 2420- V520813IN8", "Vostro 3560- V520958IN8", "Inspiron 15- W540320IN8", "Latitude 14 3000- W720783IN8", "Latitude 14 3000- W721175IN8", "Alienware 14- W540901IN8"];
    arr[2] = ["15-R036TU (J6L69PA)", "Pavilion 15-P029TX (J2C48PA)", "Pavilion 15-N260TX (G2H02PA)", "Pavilion 15-P003TX (G8D93PA)", "Pavilion 15-P073TX (J6L90PA)"];
    arr[3] = ["NP300E5E-A04IN", "NP300E5V-S02IN", "NP370R5E-S03IN", "NP550P5C-S06IN", "NP300E5E-A03IN"];
    arr[4] = ["MacBook MC516HN/A", "MacBook Pro MB990LL/A", "MacBook Pro MB991LL/A", "MacBook Pro MC373HN/A", "MacBook Pro MC372HN/A"];
    arr[5] = ["Essential G580 (59-362301)", "Essential G580 (59-324064)", "IdeaPad Z580 (59-370239)", "IdeaPad G400S (59-383645)", "IdeaPad Z510 (59-387061)"];
    arr[6] = ["VAIO Fit 15E- SVF15413SNB", "VAIO 14- SVE14135CNB", "VAIO 14- SVE1413XPNB", "VAIO Fit 14A- SVF14N16SNS", "VAIO Fit 15A- SVF15N12SNS", "VAIO Fit 15A- SVF15N17SNS"];
    arr[7] = ["Satellite C50A- E0011", "Satellite C50-A I0017", "Satellite C50-A X3110", "Portege R930-X0111", "Portege R30-A X0433", "Portege Z30-A Y0433"];
    
    var x = document.formCompLaptop.laptopmodel2;
    x.options.length = 1;
    for (var i = 1; i <= 7; i++) {
        if (choose === i) {
            for (var j = 0; j < arr[i].length; j++) {
                x.options[x.options.length] = new Option(arr[i][j]);
            }
            break;
        }
    }
}
function checkPurchaseLaptop() {
    if (formPurLaptop.pricelaptop.value === "---select---") {
        alert("Please fill all the information");
        return false;
    }
    return true;
}
function checkSellerLaptop() {
    var brand1 = formSellerLaptop.brand.value;
    var model1 = formSellerLaptop.model.value;
    var price1 = formSellerLaptop.price.value;
    var processor1 = formSellerLaptop.processor.value;
    var prospeed1 = formSellerLaptop.prospeed.value;
    var hdd1 = formSellerLaptop.hdd.value;
    var ram1 = formSellerLaptop.ram.value;
    var scrsize1 = formSellerLaptop.scrsize.value;
    var display1 = formSellerLaptop.display.value;
    var os1 = formSellerLaptop.os.value;
    var weight1 = formSellerLaptop.weight.value;
    var warranty1 = formSellerLaptop.warranty.value;
    if (brand1 === "" || model1 === "" || price1 === "" || processor1 === "" || prospeed1 === "" || hdd1 === "" || ram1 === "" || scrsize1 === "" || os1 === "" || weight1 === "" || warranty1 === "") {
        alert("Please fill all the information");
        return false;
    }
    return true;
}
