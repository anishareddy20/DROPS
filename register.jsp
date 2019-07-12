<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
< form name="myForm" action="Register" method="post">
                <table>
                <tr><td style="color: aqua;">User name</td><td><input type="text" id="fname" name="user" onblur="return ValidateFirstName()"></input></td></tr>
                <tr><td style="color: aqua;">Password</td><td><input type="password" id="pass" name="pass" onblur="return Validatepass()"></input></td></tr>
                <tr><td style="color: aqua;">Confirm Password</td><td><input type="password" id="cpass" name="cpass" onblur="return Validatecpass()"></input></td></tr>
                <tr><td style="color: aqua;">Mail Id</td><td><input type="text" name="mail" id="" onblur="return ValidateEmail()"></input></td></tr>
                <tr><td style="color: aqua;">Gender</td><td>male<input type="radio" name="sex" value="male"></input>female<input type="radio" name="sex" value="female"></input></td></tr>
                <tr><td style="color: aqua;">DOB</td><td><select name="date">
                <option value="Day">Day</option>
                <%for(int i=1;i<=31;i++){ %>
                <option value="<%=i%>"><%=i%></option>
                <%} %>
                <select>
                <select name="month">
                <option value="1">January</option>
                <option value="2">February</option>
                <option value="3">March</option>
                <option value="4">April</option>
                <option value="5">May</option>
                <option value="6">June</option>
                <option value="7">July</option>
                <option value="8">August</option>
                <option value="9">September</option>
                <option value="10">October</option>
                <option value="11">November</option>
                <option value="12">December</option>
                </select>
                <select name="year">
                <option value="Year">Year</option>
                <%for(int i=1970;i<=2015;i++){ %>
                <option value="<%=i%>"><%=i%></option>
                <%} %>
                </select></td></tr>
                <tr><td style="color: aqua;">Phone No</td><td><input type="text" name="no" id="con" onblur="return ValidateContact()"></input></td></tr>
                <tr><td style="color: aqua;;">Address</td><td><textarea rows="5" cols="15" name="address" id="addr" onblur="return ValidateAddress()"></textarea>
                <tr><td align="right"><input type="submit" value="Register"></input></td><td align="center"><input type="reset" value="Reset"></input></td></tr>
                </table>
                </form>
</body>
</html>
