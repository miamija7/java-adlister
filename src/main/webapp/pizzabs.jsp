<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/order-pizza-custom.css">
</head>
<body>
<!--Nav Bar-->
<nav class="navbar navbar-expand-md navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Pizza World</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="#">Order Online</a>
                <a class="nav-link disabled">Menu</a>
            </div>
            <form class="d-flex">
                <input id="search-zip" class="form-control me-2" type="search" placeholder="Zip Code"
                       aria-label="Search">
                <button class="btn btn-outline-primary container-fluid" type="submit">Search stores near you!</button>
            </form>
        </div>
        <div class="navbar-nav float-right">
            <a class="nav-link" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                     class="bi bi-person-fill" viewBox="0 0 16 16">
                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                </svg>
                Sign Up!
            </a>
        </div>
    </div>
</nav>
<!--Content Container-->
<div class="container">
    <!--Jumbotron-->
    <div class="d-none d-md-block">
        <div class="jumbotron">
            <h1 class="display-4">Welcome to Pizza World!</h1>
        </div>
    </div>
    <!--Order Section Start-->
    <div>
        <h2 class="mt-5">Build your own pizza!</h2>
        <!--Tabs-->
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="one-tab" data-bs-toggle="tab" data-bs-target="#one" type="button"
                        role="tab" aria-controls="one" aria-selected="true"><span class="badge bg-secondary">1</span>
                    Size and Crust
                </button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="two-tab" data-bs-toggle="tab" data-bs-target="#two" type="button"
                        role="tab" aria-controls="two" aria-selected="false"><span
                        class="badge bg-secondary">2</span> Cheese and Sauce
                </button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="three-tab" data-bs-toggle="tab" data-bs-target="#three" type="button"
                        role="tab" aria-controls="three" aria-selected="false"><span
                        class="badge bg-secondary">3</span> Toppings
                </button>
            </li>
        </ul>
        <!--tab contents-->
        <form action="/pizza-order" method="post">
            <div class="tab-content mb-5" id="myTabContent">
                <!--Size and Crust tab contents-->
                <div class="tab-pane fade show active" id="one" role="tabpanel" aria-labelledby="one-tab">
                    <div class="card">
                        <div class="card-header bg-primary text-white">Choose Size and Crust</div>
                        <div class="card" style="margin: 1em;">
                            <div class="card-header">Hand Tossed</div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Garlic seasoned crust with a rich, buttery taste.</li>
                                <li class="list-group-item">
                                    <label for="handTossed-sm"><input type="radio" name="crust" id="handTossed-sm" value="small hand tossed">
                                        Small
                                        (10")</label>
                                </li>
                                <li class="list-group-item">
                                    <label for="handTossed-md"><input type="radio" name="crust" id="handTossed-md" value="medium hand tossed">
                                        Medium
                                        (12")</label>
                                </li>
                            </ul>
                        </div>
                        <div class="card" style="margin: 1em;">
                            <div class="card-header">Crispy Thin</div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Thin enough for optimum crispy to crunch ratio.</li>
                                <li class="list-group-item">
                                    <label for="thinCrust-md"><input type="radio" name="crust" id="thinCrust-md" value="medium thin crust"> Medium
                                        (12")</label>
                                </li>
                                <li class="list-group-item">
                                    <label for="thinCrust-lg"><input type="radio" name="crust" id="thinCrust-lg" value="large thin crust"> Large
                                        (14")</label>
                                </li>
                            </ul>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-primary float-end" onclick="tabNav('one','two')">Next ></a>
                        </div>
                    </div>
                </div>
                <!--Cheese and Sauce tab contents-->
                <div class="tab-pane fade" id="two" role="tabpanel" aria-labelledby="two-tab">
                    <div class="card">
                        <div class="card-header bg-primary text-white">Choose Cheese and Sauce</div>
                        <div class="card" style="margin: 1em;">
                            <div class="card-header">Cheese</div>
                            <li class="list-group-item">How Much?</li>
                            <li class="list-group-item">
                                <select class="form-control" id="cheeseAmt" name="cheeseAmt">
                                    <option value="light cheese">Light</option>
                                    <option value="normal cheese">Normal</option>
                                    <option value="extra cheese">Extra</option>
                                    <option value="double cheese">Double</option>
                                </select>
                            </li>
                        </div>
                        <div class="card" style="margin: 1em;">
                            <div class="card-header">Sauce</div>
                            <li class="list-group-item">What Kind?</li>
                            <li class="list-group-item">
                                <select class="form-control" id="sauce" name="sauce">
                                    <option value="tomato sauce">Tomato</option>
                                    <option value="marinara sauce">Marinara</option>
                                    <option value="bbq sauce">BBQ</option>
                                    <option value="alfredo sauce">Alfredo</option>
                                </select>
                            </li>
                            <li class="list-group-item">How Much?</li>
                            <li class="list-group-item">
                                <select class="form-control" id="sauceAmt" name="sauceAmt">
                                    <option value="light sauce">Light</option>
                                    <option value="normal sauce">Normal</option>
                                    <option value="extra sauce">Extra</option>
                                </select>
                            </li>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-primary float-end" onclick="tabNav('two','three')">Next ></a>
                            <a class="btn btn-primary float-end" onclick="tabNav('two','one')">< Previous</a>
                        </div>
                    </div>
                </div>
                <!--Toppings tab contents-->
                <div class="tab-pane fade" id="three" role="tabpanel" aria-labelledby="three-tab">
                    <div class="card">
                        <div class="card-header bg-primary text-white">Choose Toppings</div>
                        <div class="card" style="margin: 1em;">
                            <div class="card-header">Choose Meats</div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <label for="beef"><input type="checkbox" name="toppings" id="beef" value="beef"> Beef</label>
                                </li>
                                <li class="list-group-item">
                                    <label for="ham"><input type="checkbox" name="toppings" id="ham" value="ham"> Ham</label>
                                </li>
                                <li class="list-group-item">
                                    <label for="philly"><input type="checkbox" name="toppings" id="philly" value="philly steak"> Philly
                                        Steak</label>
                                </li>
                                <li class="list-group-item">
                                    <label for="bacon"><input type="checkbox" name="toppings" id="bacon" value="bacon"> Bacon</label>
                                </li>
                            </ul>
                        </div>
                        <div class="card" style="margin: 1em;">
                            <div class="card-header">Choose Veggies</div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <label for="greenPeppers"><input type="checkbox" name="toppings"
                                                                     id="greenPeppers" value="green peppers">
                                        Green Peppers</label>
                                </li>
                                <li class="list-group-item">
                                    <label for="mushrooms"><input type="checkbox" name="toppings" id="mushrooms" value="mushrooms">
                                        Mushrooms</label>
                                </li>
                                <li class="list-group-item">
                                    <label for="onions"><input type="checkbox" name="toppings" id="onions" value="onions"> Onions</label>
                                </li>
                                <li class="list-group-item">
                                    <label for="jalapenos"><input type="checkbox" name="toppings" id="jalapenos" value="jalapenos">
                                        Jalapenos
                                        Peppers</label>
                                </li>
                            </ul>
                        </div>
                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary float-end">Checkout
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-cart-fill" viewBox="0 0 16 16">
                                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                                </svg>
                            </button>
                            <a class="btn btn-primary float-end" onclick="tabNav('three','two')">< Previous</a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script>
    function tabNav(curEl, tarEl) {
        let cardOn = document.getElementById(tarEl);
        let cardOff = document.getElementById(curEl);
        let tabOff = document.getElementById(curEl + '-tab');
        let tabOn = document.getElementById(tarEl + '-tab')


        cardOff.classList.toggle('active');
        cardOff.classList.toggle('show');
        tabOff.classList.toggle('active');
        tabOff.ariaSelected = 'false';
        cardOn.classList.toggle('active');
        cardOn.classList.toggle('show');
        tabOn.classList.toggle('active');
        tabOn.ariaSelected = 'true';
    }
</script>
</body>
</html>
