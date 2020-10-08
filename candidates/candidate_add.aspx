<%@ Page Language="C#" AutoEventWireup="true" CodeFile="candidate_add.aspx.cs" Inherits="candidates_candidate_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add Candidate Details</title>
<style>
    html, body, h2 {
    margin: 0;
    padding: 0.5em;
    /*font-family:'Pacifico', cursive;*/
}

body {
    background-image:url("../assets/img/intro-carousel/img11.jpg");
    font-family:'Pacifico', cursive;
}

.show {
    display: none;
}

.title,
.form {
    margin: 0 auto;
    border-radius: 2px;
}

.title {
    margin-bottom: 0.5em;
    display: block;
    background: orange;
    font-family:'Times New Roman';
    font-size: 22px;
    padding: 1em;
    text-transform: uppercase;
    box-sizing: border-box;
    text-align: center;
    cursor: pointer;
}

.flag {
    position: absolute;
    top: 7px;
    border-radius: 2px;
    border: 35px solid;
    border-top-color: orange;
    border-bottom-color: orange;
}

.show ~ .title {
    z-index: 2;
    width: 300px;
    position: relative;
    top: 250px;
    left: 0;
    transition:
        width 200ms ease-out,
        top 200ms ease-out;
}

.show ~ .title .flag {
    opacity: 0; 
}

.show ~ .title .left {
    left: 0;
    border-right-color: orange;
    border-left-color: transparent;
}

.show ~ .title .right {
    right: 0;
    border-right-color: transparent;
    border-left-color: orange;
}

.show ~ .form {
    opacity: 0;
    transition:
        opacity 200ms linear;
}

.show:checked ~ .title {
    position: relative;
    top: 0;
    width: 500px;
}

.show:checked ~ .title .left {
    opacity: 0.7;
    left: -55px;
    transition: 
        opacity 50ms linear 200ms,
        left 50ms linear 200ms;
}

.show:checked ~ .title .right {
    opacity: 0.7;
    right: -55px;
    transition: 
        opacity 50ms linear 200ms,
        right 50ms linear 200ms;
}

.show:checked ~ .form {
    opacity: 1;
}

.form {
    width: 500px;
    background: #ddd;
    padding: 2em 0 2em 0;
}

.group,
.group-2 {
    margin: 0 auto;
    width: 80%;
}

.group {
    margin-bottom: 2em;
}

.group:after {
    content: '';
    display: block;
    clear: both;
}

.col-1,
.col-2 {
    float: left;
}

.col-1 {
    width: 39%;
}

.col-1 label {
    height: 40px;
    line-height: 40px;
    font-size: 18px;
    text-shadow: 0.5px 0.5px 0 #fff;
   font-family:'Times New Roman';
    text-transform: capitalize;
}

.col-2 {
    width: 59%;
}

.col-2 input {
    border-style: none;
        border-color: inherit;
        border-width: medium;
width: 94%;
        height: 40px;
        font-family:'Times New Roman';
        outline: none;
        border-radius: 20px;
        box-sizing: border-box;
        box-shadow: 
        inset 0 0 3px 0 rgba(0,0,0,0.3),
        0.5px 0.5px 0 0 #fff;
        padding: 1em;
        margin-left: 8px;
    }

input[type="submit"] {
    display: block;
    margin: 0 auto;
    width: 30%;
}

.group-2 {
    margin-bottom: 1em;
}

.group-2:after {
    content: '';
    display: block;
    clear: both;
}

.group-2 *:not(a) {
    float: left;
}

.group-2 .checkbox {
    display: none;
}

.group-2 label {
    font-family:'Times New Roman';
    font-size: 12px;
    height: 100%;
    cursor: pointer;
    line-height: 22px;
}

.group-2 label a {
    position: relative;
    text-decoration: none;
    color: blue;
}

.group-2 label a:after {
    position: absolute;
    top: 15px;
    left: 50%;
    right: 50%;
    content: '';
    height: 1px;
    background: blue;
    transition:
        left 70ms linear,
        right 70ms linear;
}

.group-2 label a:hover:after {
    left: 0;
    right: 0;
}



.toogle {
    position: relative;
    width: 41px;
    height: 21px;
    border-radius: 10px;
    margin-right: 1em;
    background: #ccc;
    box-shadow:
        inset 0 0 2px 0 rgba(0,0,0,0.5),
        0.5px 0.5px 0 0 #fff;
    
}

.toogle:before {
    content: '';
    width: 15px;
    height: 15px;
    border-radius: 50%;
    background: #fff;
    box-shadow: 1px 1px 2px rgba(0,0,0,0.3);
}

.checkbox ~ label .toogle:before {
    position: absolute;
    top: 3px;
    left: 3px;
    transition: left 150ms linear;
}

.checkbox ~ label .toogle {
    background: rgba(200,0,0,0.5);
}

.checkbox ~ label {
    color: rgba(0,0,0,0.4);
    transition: color 100ms linear;
}

.checkbox:checked ~ label .toogle:before {
    position: absolute;
    top: 3px;
    left: 22px;
}

.checkbox:checked ~ label .toogle {
    background: rgba(0,200,0,0.5);
}

.checkbox:checked ~ label {
    color: rgba(0,0,0,1);
}

.submit {
    border: none;
    outline: none;
    position: relative;
    height: 40px;
    color: #fff;
    font-family:'Times New Roman';
    text-transform: uppercase;
    border-radius: 2px;
    background: rgba(0,0,0,0.6);
    box-shadow: 0 0 1px 0 #000;
    letter-spacing: 1.5px;
    font-size: 18px;
    transition: background 70ms linear;
}

.submit:hover {
    color: orange;
    background: rgba(0,0,0,1);
}
.submit1 {
    border: none;
    outline: none;
    position: relative;
    height: 40px;
    color: #fff;
    font-family:'Times New Roman';
    text-transform: uppercase;
    border-radius: 2px;
    background: rgba(0,0,0,0.6);
    box-shadow: 0 0 1px 0 #000;
    letter-spacing: 1.5px;
    font-size: 18px;
    transition: background 70ms linear;
}

.submit1:hover {
    color: orange;
    background: rgba(0,0,0,1);
}
    #cars
    {
        width: 235px;
        height: 40px;
    }
    #gender
    {
        width: 225px;
        height: 40px;
        margin-left: 10px;
    }

    #qualifications
    {
        width: 235px;
        height:40px;
    }
     #experience
    {
        width: 235px;
        height:40px;
    }
    #post
    {
        width: 235px;
        height: 40px;
    }

    #output
    {
        height: 146px;
        width: 227px;
    }

    #address
    {
        width: 233px;
        height: 57px;
    }
#references
{
        width: 233px;
        height: 57px;
    }
    #Img1
    {
        width: 237px;
        height: 155px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server" class="form">
       
        <div class="group">
        <div class="col-1">
            <label for="image"><b>Profile Picture<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:FileUpload ID="profile_pic" runat="server" />
            <!---
            <input type="file"  accept="image/*" name="image" id="file"  onchange="loadFile(event)" style="display: none;" required="required" >
            <img id="output">
            <label for="file" style="cursor: pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload Image</label>
                -->
            <!--<input type="button" id="button" value="Upload image" />-->
        </div>
    </div>
    <!-- Candidate Id -->
        <!--
    <div class="group">
        <div class="col-1">
            <label for="candidateid"><b>Candidate Id<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <input type="text" id="candidateid" placeholder="Candidate Id" 
                required="required" style="background-color:#ccc;"/>
        </div>
    </div>
        --->
   <!-- Candidate Name -->
    <div class="group">
        <div class="col-1">
            <label for="candidatename"><b>Candidate Name<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="candidate_name" placeholder="Candidate Name"  style="background-color:#ccc;" runat="server"></asp:TextBox>

            <!---
            <input type="text" id="candidatename" placeholder="Candidate Name" 
                required="required" style="background-color:#ccc;"/>
                -->
        </div>
    </div>
     <!-- Date Of Birth -->
    <div class="group">
        <div class="col-1">
            <label for="dob"><b>Date of Birth<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            
           
           


            
            <asp:TextBox ID="dob" runat="server" TextMode="Date" style="background-color:#ccc;" placeholder="Date of Birth" ></asp:TextBox>
           <!-- <input type="date" id="dd" placeholder="Date of Birth"  style="background-color:#ccc;"  runat="server"/> --->
           
               
        </div>
    </div>
     <!-- Gender -->
    <div class="group">
        <div class="col-1">
            <label for="gender"><b>Gender<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            

             <asp:DropDownList ID="gender" name="gender" runat="server"  style="background-color:#ccc;">
                <asp:ListItem value="">Select your gender</asp:ListItem>
                <asp:ListItem value="Male">Male</asp:ListItem>
                <asp:ListItem value="Female">Female</asp:ListItem>
                <asp:ListItem value="Others">Others</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
     <!-- Candidate Address -->
    <div class="group">
        <div class="col-1">
            <label for="address"><b>Address<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            
            <textarea  id="address" name="address" placeholder="Address" runat="server" style="background-color:#ccc;"></textarea></div>
    </div>
     <!-- Contact -->
    <div class="group">
        <div class="col-1">
            <label for="contact"><b>Mobile Number<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
        <asp:DropDownList ID="mobile_code" name="countryCode" runat="server" style="width: 120px; height: 32px; margin-left: 11px;background-color:#ccc;"  >
         <asp:ListItem Value="">Select </asp:ListItem>
	    <asp:ListItem  value="44">UK (+44)</asp:ListItem>
	    <asp:ListItem  value="1">USA (+1)</asp:ListItem>   
	    <asp:ListItem  value="213">Algeria (+213)</asp:ListItem>
	    <asp:ListItem  value="376">Andorra (+376)</asp:ListItem>
		<asp:ListItem  value="244">Angola (+244)</asp:ListItem>
		<asp:ListItem  value="1264">Anguilla (+1264)</asp:ListItem>
		<asp:ListItem  value="1268">Antigua &amp; Barbuda (+1268)</asp:ListItem>
		<asp:ListItem  value="54">Argentina (+54)</asp:ListItem>
		<asp:ListItem  value="374">Armenia (+374)</asp:ListItem>
		<asp:ListItem  value="297">Aruba (+297)</asp:ListItem>
		<asp:ListItem  value="61">Australia (+61)</asp:ListItem>
		<asp:ListItem  value="43">Austria (+43)</asp:ListItem>
		<asp:ListItem  value="994">Azerbaijan (+994)</asp:ListItem>
		<asp:ListItem  value="1242">Bahamas (+1242)</asp:ListItem>
		<asp:ListItem  value="973">Bahrain (+973)</asp:ListItem>
		<asp:ListItem  value="880">Bangladesh (+880)</asp:ListItem>
		<asp:ListItem  value="1246">Barbados (+1246)</asp:ListItem>
		<asp:ListItem  value="375">Belarus (+375)</asp:ListItem>
		<asp:ListItem  value="32">Belgium (+32)</asp:ListItem>
		<asp:ListItem  value="501">Belize (+501)</asp:ListItem>
		<asp:ListItem  value="229">Benin (+229)</asp:ListItem>
		<asp:ListItem  value="1441">Bermuda (+1441)</asp:ListItem>
		<asp:ListItem  value="975">Bhutan (+975)</asp:ListItem>
		<asp:ListItem  value="591">Bolivia (+591)</asp:ListItem>
		<asp:ListItem  value="387">Bosnia Herzegovina (+387)</asp:ListItem>
		<asp:ListItem  value="267">Botswana (+267)</asp:ListItem>
		<asp:ListItem  value="55">Brazil (+55)</asp:ListItem>
		<asp:ListItem  value="673">Brunei (+673)</asp:ListItem>
		<asp:ListItem  value="359">Bulgaria (+359)</asp:ListItem>
		<asp:ListItem  value="226">Burkina Faso (+226)</asp:ListItem>
		<asp:ListItem  value="257">Burundi (+257)</asp:ListItem>
		<asp:ListItem  value="855">Cambodia (+855)</asp:ListItem>
		<asp:ListItem  value="237">Cameroon (+237)</asp:ListItem>
		<asp:ListItem  value="1">Canada (+1)</asp:ListItem>
		<asp:ListItem  value="238">Cape Verde Islands (+238)</asp:ListItem>
		<asp:ListItem  value="1345">Cayman Islands (+1345)</asp:ListItem>
		<asp:ListItem  value="236">Central African Republic (+236)</asp:ListItem>
		<asp:ListItem  value="56">Chile (+56)</asp:ListItem>
		<asp:ListItem  value="86">China (+86)</asp:ListItem>
		<asp:ListItem  value="57">Colombia (+57)</asp:ListItem>
		<asp:ListItem  value="269">Comoros (+269)</asp:ListItem>
		<asp:ListItem  value="242">Congo (+242)</asp:ListItem>
		<asp:ListItem  value="682">Cook Islands (+682)</asp:ListItem>
		<asp:ListItem  value="506">Costa Rica (+506)</asp:ListItem>
		<asp:ListItem  value="385">Croatia (+385)</asp:ListItem>
		<asp:ListItem  value="53">Cuba (+53)</asp:ListItem>
		<asp:ListItem  value="90392">Cyprus North (+90392)</asp:ListItem>
		<asp:ListItem  value="357">Cyprus South (+357)</asp:ListItem>
		<asp:ListItem  value="42">Czech Republic (+42)</asp:ListItem>
		<asp:ListItem  value="45">Denmark (+45)</asp:ListItem>
		<asp:ListItem  value="253">Djibouti (+253)</asp:ListItem>
		<asp:ListItem  value="1809">Dominica (+1809)</asp:ListItem>
		<asp:ListItem  value="1809">Dominican Republic (+1809)</asp:ListItem>
		<asp:ListItem  value="593">Ecuador (+593)</asp:ListItem>
		<asp:ListItem  value="20">Egypt (+20)</asp:ListItem>
		<asp:ListItem  value="503">El Salvador (+503)</asp:ListItem>
		<asp:ListItem  value="240">Equatorial Guinea (+240)</asp:ListItem>
		<asp:ListItem  value="291">Eritrea (+291)</asp:ListItem>
		<asp:ListItem  value="372">Estonia (+372)</asp:ListItem>
		<asp:ListItem  value="251">Ethiopia (+251)</asp:ListItem>
		<asp:ListItem  value="500">Falkland Islands (+500)</asp:ListItem>
		<asp:ListItem  value="298">Faroe Islands (+298)</asp:ListItem>
		<asp:ListItem  value="679">Fiji (+679)</asp:ListItem>
		<asp:ListItem  value="358">Finland (+358)</asp:ListItem>
		<asp:ListItem  value="33">France (+33)</asp:ListItem>
		<asp:ListItem  value="594">French Guiana (+594)</asp:ListItem>
		<asp:ListItem  value="689">French Polynesia (+689)</asp:ListItem>
		<asp:ListItem  value="241">Gabon (+241)</asp:ListItem>
		<asp:ListItem  value="220">Gambia (+220)</asp:ListItem>
		<asp:ListItem  value="7880">Georgia (+7880)</asp:ListItem>
		<asp:ListItem  value="49">Germany (+49)</asp:ListItem>
		<asp:ListItem  value="233">Ghana (+233)</asp:ListItem>
		<asp:ListItem  value="350">Gibraltar (+350)</asp:ListItem>
		<asp:ListItem  value="30">Greece (+30)</asp:ListItem>
		<asp:ListItem  value="299">Greenland (+299)</asp:ListItem>
		<asp:ListItem  value="1473">Grenada (+1473)</asp:ListItem>
		<asp:ListItem  value="590">Guadeloupe (+590)</asp:ListItem>
		<asp:ListItem  value="671">Guam (+671)</asp:ListItem>
		<asp:ListItem  value="502">Guatemala (+502)</asp:ListItem>
		<asp:ListItem  value="224">Guinea (+224)</asp:ListItem>
		<asp:ListItem  value="245">Guinea - Bissau (+245)</asp:ListItem>
		<asp:ListItem  value="592">Guyana (+592)</asp:ListItem>
		<asp:ListItem  value="509">Haiti (+509)</asp:ListItem>
		<asp:ListItem  value="504">Honduras (+504)</asp:ListItem>
		<asp:ListItem  value="852">Hong Kong (+852)</asp:ListItem>
		<asp:ListItem  value="36">Hungary (+36)</asp:ListItem>
		<asp:ListItem  value="354">Iceland (+354)</asp:ListItem>
		<asp:ListItem  value="91">India (+91)</asp:ListItem>
		<asp:ListItem  value="62">Indonesia (+62)</asp:ListItem>
		<asp:ListItem  value="98">Iran (+98)</asp:ListItem>
		<asp:ListItem  value="964">Iraq (+964)</asp:ListItem>
		<asp:ListItem  value="353">Ireland (+353)</asp:ListItem>
		<asp:ListItem  value="972">Israel (+972)</asp:ListItem>
		<asp:ListItem  value="39">Italy (+39)</asp:ListItem>
		<asp:ListItem  value="1876">Jamaica (+1876)</asp:ListItem>
		<asp:ListItem  value="81">Japan (+81)</asp:ListItem>
		<asp:ListItem  value="962">Jordan (+962)</asp:ListItem>
		<asp:ListItem  value="7">Kazakhstan (+7)</asp:ListItem>
		<asp:ListItem  value="254">Kenya (+254)</asp:ListItem>
		<asp:ListItem  value="686">Kiribati (+686)</asp:ListItem>
		<asp:ListItem  value="850">Korea North (+850)</asp:ListItem>
		<asp:ListItem  value="82">Korea South (+82)</asp:ListItem>
		<asp:ListItem  value="965">Kuwait (+965)</asp:ListItem>
		<asp:ListItem  value="996">Kyrgyzstan (+996)</asp:ListItem>
		<asp:ListItem  value="856">Laos (+856)</asp:ListItem>
		<asp:ListItem  value="371">Latvia (+371)</asp:ListItem>
		<asp:ListItem  value="961">Lebanon (+961)</asp:ListItem>
		<asp:ListItem  value="266">Lesotho (+266)</asp:ListItem>
		<asp:ListItem  value="231">Liberia (+231)</asp:ListItem>
		<asp:ListItem  value="218">Libya (+218)</asp:ListItem>
		<asp:ListItem  value="417">Liechtenstein (+417)</asp:ListItem>
		<asp:ListItem  value="370">Lithuania (+370)</asp:ListItem>
		<asp:ListItem  value="352">Luxembourg (+352)</asp:ListItem>
		<asp:ListItem  value="853">Macao (+853)</asp:ListItem>
		<asp:ListItem  value="389">Macedonia (+389)</asp:ListItem>
		<asp:ListItem  value="261">Madagascar (+261)</asp:ListItem>
		<asp:ListItem  value="265">Malawi (+265)</asp:ListItem>
		<asp:ListItem  value="60">Malaysia (+60)</asp:ListItem>
		<asp:ListItem  value="960">Maldives (+960)</asp:ListItem>
		<asp:ListItem  value="223">Mali (+223)</asp:ListItem>
		<asp:ListItem  value="356">Malta (+356)</asp:ListItem>
		<asp:ListItem  value="692">Marshall Islands (+692)</asp:ListItem>
		<asp:ListItem  value="596">Martinique (+596)</asp:ListItem>
		<asp:ListItem  value="222">Mauritania (+222)</asp:ListItem>
		<asp:ListItem  value="269">Mayotte (+269)</asp:ListItem>
		<asp:ListItem  value="52">Mexico (+52)</asp:ListItem>
		<asp:ListItem  value="691">Micronesia (+691)</asp:ListItem>
		<asp:ListItem  value="373">Moldova (+373)</asp:ListItem>
		<asp:ListItem  value="377">Monaco (+377)</asp:ListItem>
		<asp:ListItem  value="976">Mongolia (+976)</asp:ListItem>
		<asp:ListItem  value="1664">Montserrat (+1664)</asp:ListItem>
		<asp:ListItem  value="212">Morocco (+212)</asp:ListItem>
		<asp:ListItem  value="258">Mozambique (+258)</asp:ListItem>
		<asp:ListItem  value="95">Myanmar (+95)</asp:ListItem>
		<asp:ListItem  value="264">Namibia (+264)</asp:ListItem>
		<asp:ListItem  value="674">Nauru (+674)</asp:ListItem>
		<asp:ListItem  value="977">Nepal (+977)</asp:ListItem>
		<asp:ListItem  value="31">Netherlands (+31)</asp:ListItem>
		<asp:ListItem  value="687">New Caledonia (+687)</asp:ListItem>
		<asp:ListItem  value="64">New Zealand (+64)</asp:ListItem>
		<asp:ListItem  value="505">Nicaragua (+505)</asp:ListItem>
		<asp:ListItem  value="227">Niger (+227)</asp:ListItem>
		<asp:ListItem  value="234">Nigeria (+234)</asp:ListItem>
		<asp:ListItem  value="683">Niue (+683)</asp:ListItem>
		<asp:ListItem  value="672">Norfolk Islands (+672)</asp:ListItem>
		<asp:ListItem  value="670">Northern Marianas (+670)</asp:ListItem>
		<asp:ListItem  value="47">Norway (+47)</asp:ListItem>
		<asp:ListItem  value="968">Oman (+968)</asp:ListItem>
		<asp:ListItem  value="680">Palau (+680)</asp:ListItem>
		<asp:ListItem  value="507">Panama (+507)</asp:ListItem>
		<asp:ListItem  value="675">Papua New Guinea (+675)</asp:ListItem>
		<asp:ListItem  value="595">Paraguay (+595)</asp:ListItem>
		<asp:ListItem  value="51">Peru (+51)</asp:ListItem>
		<asp:ListItem  value="63">Philippines (+63)</asp:ListItem>
		<asp:ListItem  value="48">Poland (+48)</asp:ListItem>
		<asp:ListItem  value="351">Portugal (+351)</asp:ListItem>
		<asp:ListItem  value="1787">Puerto Rico (+1787)</asp:ListItem>
		<asp:ListItem  value="974">Qatar (+974)</asp:ListItem>
		<asp:ListItem  value="262">Reunion (+262)</asp:ListItem>
		<asp:ListItem  value="40">Romania (+40)</asp:ListItem>
		<asp:ListItem  value="7">Russia (+7)</asp:ListItem>
		<asp:ListItem  value="250">Rwanda (+250)</asp:ListItem>
		<asp:ListItem  value="378">San Marino (+378)</asp:ListItem>
		<asp:ListItem  value="239">Sao Tome &amp; Principe (+239)</asp:ListItem>
		<asp:ListItem  value="966">Saudi Arabia (+966)</asp:ListItem>
		<asp:ListItem  value="221">Senegal (+221)</asp:ListItem>
		<asp:ListItem  value="381">Serbia (+381)</asp:ListItem>
		<asp:ListItem  value="248">Seychelles (+248)</asp:ListItem>
		<asp:ListItem  value="232">Sierra Leone (+232)</asp:ListItem>
		<asp:ListItem  value="65">Singapore (+65)</asp:ListItem>
		<asp:ListItem  value="421">Slovak Republic (+421)</asp:ListItem>
		<asp:ListItem  value="386">Slovenia (+386)</asp:ListItem>
		<asp:ListItem  value="677">Solomon Islands (+677)</asp:ListItem>
		<asp:ListItem  value="252">Somalia (+252)</asp:ListItem>
		<asp:ListItem  value="27">South Africa (+27)</asp:ListItem>
		<asp:ListItem  value="34">Spain (+34)</asp:ListItem>
		<asp:ListItem  value="94">Sri Lanka (+94)</asp:ListItem>
		<asp:ListItem  value="290">St. Helena (+290)</asp:ListItem>
		<asp:ListItem  value="1869">St. Kitts (+1869)</asp:ListItem>
		<asp:ListItem  value="1758">St. Lucia (+1758)</asp:ListItem>
		<asp:ListItem  value="249">Sudan (+249)</asp:ListItem>
		<asp:ListItem  value="597">Suriname (+597)</asp:ListItem>
		<asp:ListItem  value="268">Swaziland (+268)</asp:ListItem>
		<asp:ListItem  value="46">Sweden (+46)</asp:ListItem>
		<asp:ListItem  value="41">Switzerland (+41)</asp:ListItem>
		<asp:ListItem  value="963">Syria (+963)</asp:ListItem>
		<asp:ListItem  value="886">Taiwan (+886)</asp:ListItem>
		<asp:ListItem  value="7">Tajikstan (+7)</asp:ListItem>
		<asp:ListItem  value="66">Thailand (+66)</asp:ListItem>
		<asp:ListItem  value="228">Togo (+228)</asp:ListItem>
		<asp:ListItem  value="676">Tonga (+676)</asp:ListItem>
		<asp:ListItem  value="1868">Trinidad &amp; Tobago (+1868)</asp:ListItem>
		<asp:ListItem  value="216">Tunisia (+216)</asp:ListItem>
		<asp:ListItem  value="90">Turkey (+90)</asp:ListItem>
		<asp:ListItem  value="7">Turkmenistan (+7)</asp:ListItem>
		<asp:ListItem  value="993">Turkmenistan (+993)</asp:ListItem>
		<asp:ListItem  value="1649">Turks &amp; Caicos Islands (+1649)</asp:ListItem>
		<asp:ListItem  value="688">Tuvalu (+688)</asp:ListItem>
		<asp:ListItem  value="256">Uganda (+256)</asp:ListItem>
		
           
		<asp:ListItem  value="380">Ukraine (+380)</asp:ListItem>
		<asp:ListItem  value="971">United Arab Emirates (+971)</asp:ListItem>
		<asp:ListItem  value="598">Uruguay (+598)</asp:ListItem>
		
          
		<asp:ListItem  value="7">Uzbekistan (+7)</asp:ListItem>
		<asp:ListItem  value="678">Vanuatu (+678)</asp:ListItem>
		<asp:ListItem  value="379">Vatican City (+379)</asp:ListItem>
		<asp:ListItem  value="58">Venezuela (+58)</asp:ListItem>
		<asp:ListItem  value="84">Vietnam (+84)</asp:ListItem>
		<asp:ListItem  value="84">Virgin Islands - British (+1284)</asp:ListItem>
		<asp:ListItem  value="84">Virgin Islands - US (+1340)</asp:ListItem>
		<asp:ListItem  value="681">Wallis &amp; Futuna (+681)</asp:ListItem>
		<asp:ListItem  value="969">Yemen (North)(+969)</asp:ListItem>
		<asp:ListItem  value="967">Yemen (South)(+967)</asp:ListItem>
		<asp:ListItem  value="260">Zambia (+260)</asp:ListItem>
		<asp:ListItem  value="263">Zimbabwe (+263)</asp:ListItem>
	
</asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            
            <input type="tel" id="contact" runat="server" placeholder="Mobile:(format:xxx-xxx-xxxx)" pattern="^(?:\(\d{3}\)|\d{3})[- ]?\d{3}[- ]?\d{4}$"  style="background-color:#ccc;"/>
        </div>
    </div>
     <!-- Qualifications -->
    <div class="group">
        <div class="col-1">
            <label for="qualifications"><b>Qualifications<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:DropDownList ID="qualifications" runat="server" name="qualification"  style="background-color:#ccc;"  >
                 <asp:ListItem value="">Select your qualifications</asp:ListItem>
                <asp:ListItem value="ten">10th pass</asp:ListItem>
                <asp:ListItem value="twelve">12th pass</asp:ListItem>
                <asp:ListItem value="ug">Undergraduate</asp:ListItem>
                <asp:ListItem value="pg">Postgraduate</asp:ListItem>
                <asp:ListItem value="phd">Doctorate(PhD)</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
     <!-- Applying Date 
    <div class="group">
        <div class="col-1">
            <label for="apply"><b>Applying Date<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <input type="date" id="date" placeholder="Applying date"  style="background-color:#ccc;"/>
        </div>
    </div>
         -->
     <!-- experience -->
    <div class="group">
        <div class="col-1">
            <label for="experience"><b>Experience<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:DropDownList ID="experience" runat="server" name="qualification"  style="background-color:#ccc;" >
                <asp:ListItem value="">Select Year of Experience</asp:ListItem>
                <asp:ListItem value="below">Below 6months</asp:ListItem>
                <asp:ListItem value="between">Between 6months to 1 year</asp:ListItem>
                <asp:ListItem value="year1">Between 1 year to 3 year</asp:ListItem>
                <asp:ListItem value="year2">Between 3 year to 5 year</asp:ListItem>
                <asp:ListItem value="above">Above 5 year</asp:ListItem>
                <asp:ListItem value="no">No Experience</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
     <!-- post applied -->
    <div class="group">
        <div class="col-1">
            <label for="post"><b>Post Applied<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:DropDownList id="post" name="post" runat="server" style="background-color:#ccc;" >
                <asp:ListItem value="">Select the post applied</asp:ListItem>
                <asp:ListItem value="programmer">Developer</asp:ListItem>
                <asp:ListItem value="testing">Testing & Coding</asp:ListItem>
                <asp:ListItem value="account">Accountant</asp:ListItem>
                <asp:ListItem value="sales">Salesman</asp:ListItem>
                <asp:ListItem value="manager">Training manager</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
     <!-- Refernce -->
    <div class="group">
        <div class="col-1">
            <label for="reference"><b>References<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <textarea id="references" runat="server" name="references" placeholder="References"  style="background-color:#ccc;"></textarea>
        </div>
    </div>
    <!--CV-->
    <div class="group">
        <div class="col-1">
            <label for="cv"><b>CV<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <!--
            <input type="file"  accept="image/*" name="image" id="file1"  onchange="loadFile(event)" style="display: none;">
            <img id="Img1" />
            <label for="file" style="cursor: pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload Images</label>
            <!--<input type="button" id="button" value="Upload image" />-->
            
            <asp:FileUpload ID="cv_pic" runat="server" />
        </div>
    </div>
     <!-- Email -->
    <div class="group">
        <div class="col-1">
            <label for="email"><b>Email Id<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="email" runat="server" TextMode="Email" placeholder="example@email.com"  style="background-color:#ccc;"></asp:TextBox>
          <!--  <input type="email" id="email1" runat="server" placeholder="example@email.com"  style="background-color:#ccc;"/>-->
        </div>
    </div>
    <!-- Password -->
    <div class="group">
        <div class="col-1">
            <label for="password"><b>Password<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="pwd" runat="server" TextMode="Password" placeholder="password"  style="background-color:#ccc;"></asp:TextBox>
            <!---<input type="password" id="pwd1" runat="server" placeholder="password"  style="background-color:#ccc;"/>-->
        </div>
    </div>
    <!-- Terms & Conditions -->
    <div class="group-2">
        <asp:CheckBox ID="terms" runat="server" />
       <!-- <input type="checkbox" class="checkbox" id="terms" />-->
        <label for="terms"><span class="toogle"></span>I declare to have read and accepted the <a href="#">terms of service</a></label>
    </div>
    <!-- Notifications -->
    
    <!-- Submit button -->
        <div class ="submit">
            
                <input id="Reset1" type="reset" value="reset" class="submit1"   />
            </div>
            <div class="submit">
                <asp:Button ID="submit" runat="server" Text="Submit" CssClass="submit" OnClick="submit_Click" OnClientClick="return checkForm(form1);" />
                
            </div>
        
       
        
   <!-- <input type="submit" class="submit" value="Submit" class="submit1 /><br />
     <input type="submit" class="submit1" value="Cancel" />-->
</form>
    
    <script>
    var loadFile = function (event) {
        var image = document.getElementById('output');
        image.src = URL.createObjectURL(event.target.files[0]);
    };
    function checkForm(form) {
        //if (form.username.value == "") {
        //    alert("Error: Username cannot be blank!");
        //    form.username.focus();
        //    return false;
        //}
        //// regular expression to match required string format
        //re = /^\w+$/;
        //if (!re.test(form.username.value)) {
        //    alert("Error: Username must contain only letters, numbers and underscores!");
        //    form.username.focus();
        //    return false;
        //}
        //compare both password field value 
        if (form.pwd1.value != "" && form.pwd1.value == form.pwd2.value) {
            if (form.pwd1.value.length < 6) {
                alert("Error: Password must contain at least six characters!");
                form.pwd1.focus();
                return false;
            }
            //compare username and password if both are same generate error 
            //if (form.pwd1.value == form.username.value) {
            //    alert("Error: Password must be different from Username!");
            //    form.pwd1.focus();
            //    return false;
            //}
            // regular expression to match required at least one numeric value in passord field
            re = /[0-9]/;
            if (!re.test(form.pwd1.value)) {
                alert("Error: password must contain at least one number (0-9)!");
                form.pwd1.focus();
                return false;
            }
            // regular expression to match required at least one lowercase letter in passord field
            re = /[a-z]/;
            if (!re.test(form.pwd1.value)) {
                alert("Error: password must contain at least one lowercase letter (a-z)!");
                form.pwd1.focus();
                return false;
            }
            // regular expression to match required at least one uppercase letter in passord field
            re = /[A-Z]/;
            if (!re.test(form.pwd1.value)) {
                alert("Error: password must contain at least one uppercase letter (A-Z)!");
                form.pwd1.focus();
                return false;
            }
        } else {
            alert("Error: Please check that you've entered and confirmed your password!");
            form.pwd1.focus();
            return false;
        }
        alert("You entered a valid password: " + form.pwd1.value);
        return true;
        }

    </script>
</body>
</html>
