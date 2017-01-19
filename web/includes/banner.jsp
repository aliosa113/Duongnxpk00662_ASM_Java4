<%-- 
    Document   : banner
    Created on : Oct 30, 2016, 7:41:38 PM
    Author     : DuongNguyen
--%>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="images/banner3.png" alt="New York" width="1200" height="700">
            <div class="carousel-caption">
                <h3>Wallpaper 1</h3>
                <p>The atmosphere in New York is lorem ipsum.</p>
            </div>
        </div>

        <div class="item">
            <img src="images/banner5.png" alt="Chicago" width="1200" height="700">
            <div class="carousel-caption">
                <h3>Wallpaper 2</h3>
                <p>Thank you, Chicago - A night we won't forget.</p>
            </div>
        </div>

        <div class="item">
            <img src="images/banner1.png" alt="Los Angeles" width="1200" height="700">
            <div class="carousel-caption">
                <h3>Wallpaper 3</h3>
                <p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
            </div>
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
