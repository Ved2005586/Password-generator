<html>
<head>
    <title>Password Generator App By Vedant Salunkhe</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Segoe UI',sans-serif;
        }

        body{
            background:#FFF8F0;
            display:flex;
            justify-content:center;
            align-items:center;
            flex-direction:column;
            min-height:100vh;
        }

        h1{
            color:#6D4C41;
            margin-bottom:25px;
            font-size:42px;
        }

        .fc{
            width:600px;
            background:white;
            padding:35px;
            border-radius:20px;
            box-shadow:0 10px 25px rgba(0,0,0,.15);
            text-align:center;
            border:2px solid #E6D5C3;
        }

        label{
            font-size:24px;
            color:#5D4037;
            font-weight:600;
        }

        select{
            width:120px;
            padding:10px;
            font-size:22px;
            border:2px solid #D7CCC8;
            border-radius:8px;
            outline:none;
            background:#FFFDFB;
        }

        .options{
            margin:25px 0;
            display:flex;
            justify-content:center;
            gap:20px;
            flex-wrap:wrap;
        }

        .options label{
            display:flex;
            align-items:center;
            gap:8px;
            font-size:20px;
            font-weight:500;
            cursor:pointer;
        }

        input[type=checkbox]{
            transform:scale(1.3);
            accent-color:#8D6E63;
        }

        input[type=submit]{
            margin-top:15px;
            padding:15px 30px;
            font-size:22px;
            border:none;
            border-radius:10px;
            background:#8D6E63;
            color:white;
            cursor:pointer;
            transition:.3s;
        }

        input[type=submit]:hover{
            background:#6D4C41;
            transform:translateY(-2px);
        }

        .result{
            margin-top:25px;
            width:600px;
            background:white;
            padding:20px;
            border-left:6px solid #8D6E63;
            border-radius:15px;
            box-shadow:0 8px 20px rgba(0,0,0,.15);
            text-align:center;
        }

        .result h2{
            color:#6D4C41;
            margin-bottom:15px;
            font-size:28px;
        }

        .password{
            font-size:28px;
            font-weight:bold;
            color:#2E7D32;
            word-wrap:break-word;
            letter-spacing:2px;
        }
    </style>
</head>

<body>

<h1>Password Generator App</h1>

<div class="fc">

<form>

<label>Choose Password Length</label>

<select name="ple">
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
</select>

<div class="options">

<label>
<input type="checkbox" name="uc">
Uppercase
</label>

<label>
<input type="checkbox" name="di">
Digits
</label>

<label>
<input type="checkbox" name="sp">
Special Characters
</label>

</div>

<input type="submit" value="Generate Password" name="btn">

</form>

</div>

<%
if(request.getParameter("btn")!=null)
{
    int ple = Integer.parseInt(request.getParameter("ple"));

    String text = "abcdefghijklmnopqrstuvwxyz";

    if(request.getParameter("uc")!=null)
        text += text.toUpperCase();

    if(request.getParameter("di")!=null)
        text += "0123456789";

    if(request.getParameter("sp")!=null)
        text += "!@#$%^&*(){}[]<>?/";

    String pw="";

    for(int i=0;i<ple;i++)
    {
        int r=(int)(Math.random()*text.length());
        pw += text.charAt(r);
    }

    out.println("<div class='result'>");
    out.println("<h2>Generated Password</h2>");
    out.println("<div class='password'>" + pw + "</div>");
    out.println("</div>");
}
%>

</body>
</html>