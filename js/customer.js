const CountdownTime = 60*3;
const VeriTime = 60*3;
const debug = false;
let counterMail = 0;
let counterSMS = 0;
var countingMail = false;
var countingSMS = false;
var mailbtn = document.getElementById('Btn_SendMailVeri');
var SMSbtn = document.getElementById('Btn_SendPhoneVeri'); 

function SendPhoneVeri_Click() {
    var phone = document.getElementById("ContentPlaceHolder1_TextBox_MoPhone");
    if (!isPhone(phone.value)) {
        if (debug) console.log("格式錯誤");
        phone.className = "form-control is-invalid";
        return;
    }
    phone.className = "form-control";
    PageMethods.sendSMS(phone.value);

    if (debug) console.log("進入phone監聽");
    if (countingSMS)
        counterSMS = 0;
    countingSMS = true;
    intervalIdSMS = window.setInterval("timerPhone()", 1000);
    SMSbtn.disabled = true;
}
function timerPhone() {
    if (debug) console.log("進入timerPhone");
    counterSMS++;
    if (counterSMS < CountdownTime) SMSbtn.value = `剩餘${CountdownTime - counterSMS}秒`;
    else if (counterSMS == CountdownTime) {
        SMSbtn.disabled = false;
        SMSbtn.value = `發送手機驗證碼`;
    }
    if (counterSMS == VeriTime) {
        if (debug) console.log("結束phone監聽");
        clearInterval(intervalIdSMS);
        PageMethods.reSetSMSVeriCode();
        countingSMS = false;
        counterSMS = 0;
    }
}

function SendMailVeri_Click() {
    var name = document.getElementById("ContentPlaceHolder1_TextBox_Name");
    var mail = document.getElementById("ContentPlaceHolder1_TextBox_Mail");
    if (!isMail(mail.value)) {
        mail.className = "form-control is-invalid";
        return;
    }
    mail.className = "form-control";
    PageMethods.sendMail(name.value, mail.value);
    
    if(debug)console.log("進入Mail監聽");
    if (countingMail) 
        counterMail = 0;
    countingMail = true;
    intervalId = window.setInterval("timerMail()", 1000);
    mailbtn.disabled = true;
}
function timerMail()
{
    if (debug)console.log("進入timerMail");
    counterMail++;
    if (counterMail < CountdownTime) mailbtn.value = `剩餘${CountdownTime - counterMail}秒`;
    else if (counterMail == CountdownTime) {
        mailbtn.disabled = false;
        mailbtn.value = `發送E-mail驗證碼`;
    }
    if (counterMail == VeriTime)
    {
        if (debug)console.log("結束Mail監聽");
        clearInterval(intervalId);
        PageMethods.reSetMailVeriCode();
        countingMail = false;
        counterMail = 0;
    }
}

function isMail(mail) {
    //Regular expression Testing
    emailRule = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/;
    if(debug)console.log(mail);
    return (mail.search(emailRule) != -1) ? true : false;
}
function isPhone(phone) {
    //Regular expression Testing
    phoneRule = /^[09]+[0-9]{8}$/g;
    if (debug) console.log(phone);
    return (phone.search(phoneRule) != -1) ? true : false;
}