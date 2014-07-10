<%-- 
    Document   : displayacc
    Created on : Jul 10, 2014, 8:23:24 AM
    Author     : Doll
--%>
<!--ribbon-->
<script>
    window.onload = function showLogin() {
        document.getElementById('logins').onclick = function() {
            document.getElementById('loginform').style.display = 'block'; 
        };
    };
</script>
<div class="ribbon">
    <nav>
        <ul class="profile-nav">
            <li class="active"><a href="#" title="My Account">My Account</a></li>
                <%
                    if (session.getAttribute("user") != null) {
                        String user = session.getAttribute("user").toString();
                        if (user != null) {
                            out.print("<li>Hello " + user + "!</li>");
                            out.print("<li><a href='logout'>LOGOUT</a></li>");
                        }
                    } else {
                        out.print("<li><a href='#' id='logins' title='Login' onclick='showLogin()'>Login</a></li>");
                    }

                %>

            <li><a href="my_account.html" title="Settings">Settings</a></li>
        </ul>
        <ul class="lang-nav">
            <li class="active"><a href="#" title="English (US)">English (US)</a></li>
            <li><a href="#" title="English (UK)">English (UK)</a></li>
            <li><a href="#" title="Deutsch">Deutsch</a></li>
            <li><a href="#" title="Italiano">Italiano</a></li>
        </ul>
        <ul class="currency-nav">
            <li class="active"><a href="#" title="$US Dollar">$US Dollar</a></li>
            <li><a href="#" title="? Euro">? Euro</a></li>
            <li><a href="#" title="£ Pound">£ Pound</a></li>
        </ul>
    </nav>
</div>
<div class="lightbox" id="loginform">
    <div class="lb-wrap">
        <a href="#" class="close">x</a>
        <div class="lb-content">
            <form action="login" method="post">
                <h1>Log in</h1>
                <div class="f-item">
                    <label for="email">E-mail address</label>
                    <input type="email" id="email" name="email" />
                </div>
                <div class="f-item">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" />
                </div>
                <div class="f-item checkbox">
                    <input type="checkbox" id="remember_me" name="checkbox" />
                    <label for="remember_me">Remember me next time</label>
                </div>
                <p><a href="#" title="Forgot password?">Forgot password?</a><br />
                    Dont have an account yet? <a href="register.jsp" title="Sign up">Sign up.</a></p>
                <input type="submit" id="login" name="login" value="login" class="gradient-button"/>
            </form>
        </div>
    </div>
</div>
<!--//ribbon-->
