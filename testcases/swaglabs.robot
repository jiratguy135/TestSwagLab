*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/common.robot
Resource    ../keywords/loginpage.robot
Resource    ../keywords/homepage.robot
Resource    ../keywords/detailproduct.robot
Resource    ../keywords/cartpage.robot
Resource    ../keywords/checkoutpage.robot
Resource    ../keywords/confirmataionpage.robot

Test Teardown    Close All Browsers
*** Test Cases ***
Case 1 Login Success
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
Case 2 User Incorrect
    common.Open Website Swag Labs
    loginpage.Input Username    standard_use
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
Case 3 Password Incorrect
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauc
    loginpage.Login Button
    Sleep    2s
Case 4 Add to Cart
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    4
    Sleep    3s
Case 5 Remove to Cart
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Remove to cart on homepage    0
    Sleep    3s
Case 6 Select Product from Name Product
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Select Name Product    0
    Sleep    4s
Case 7 Select Product from Picture
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Select Picutre Product    0
    Sleep    4s
Case 8 Sorting A-Z
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Sorting    1
    Sleep    4s
Case 9 Sorting Z-A
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Sorting    2
    Sleep    4s
Case 10 Sorting Low Price to High Price
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Sorting    3
    Sleep    4s
Case 11 Sorting High Price to Low Price
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Sorting    4
    Sleep    4s
Case 12 Hamburger
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Hambuger Tab
    Sleep    4s
Case 13 Exit in Hambuger Tab
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Hambuger Tab
    Sleep    2s
    homepage.Exit in Hambuger Tab
    Sleep    4s
Case 14 About in Hambuger Tab
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Hambuger Tab
    homepage.About in Hambuger Tab
    Sleep    4s
Case 15 Logout in Hambuger Tab
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Hambuger Tab
    homepage.Logout in Hambuger Tab
    Sleep    4s
Case 16 Reset App in Hambuger Tab
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Hambuger Tab
    homepage.Reset App in Hambuger Tab
    Sleep    4s
Case 17 All Item in Hambuger Tab
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Hambuger Tab
    homepage.All Item in Hambuger Tab
    Sleep    4s
Case 18 Cart without Product
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Cart
    Sleep    4s
Case 19 Cart within Product
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    4s
Case 20 Remove Product and Cart without Product
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Remove to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    4s
Case 21 Continue in Your Cart without Product
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Continue Button
    Sleep    4s
Case 22 Checkout in Your Cart without Product
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    Sleep    4s
Case 23 Remove Product in Cart
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    homepage.Remove to cart on homepage    0
    Sleep    4s
Case 24 Remove Product and Continue Cart
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    1
    Sleep    2s
    homepage.Cart
    Sleep    2s
    homepage.Remove to cart on homepage    1
    cartpage.Continue Button
    Sleep    4s
Case 25 Remove Product and Checkout Cart
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    1
    Sleep    2s
    homepage.Cart
    Sleep    2s
    homepage.Remove to cart on homepage    1
    cartpage.Checkout Button
    Sleep    4s
Case 26 Detail in Cart Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    1
    Sleep    2s
    homepage.Cart
    Sleep    2s
    homepage.Select Name Product    1
    Sleep    4s
Case 27 Checkout in Detail Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    1
    Sleep    2s
    homepage.Cart
    Sleep    2s
    homepage.Select Name Product    1
    detailproduct.Cart
    Sleep    4s
Case 28 Back to products in Detail Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    1
    Sleep    2s
    homepage.Cart
    Sleep    2s
    homepage.Select Name Product    1
    detailproduct.Back to products
    Sleep    4s
Case 29 Checkout Product
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    Sleep    4s
Case 30 Continue in Checkout Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    checkoutpage.First Name    TestF
    checkoutpage.Last Name    TestL
    checkoutpage.Postal Code    TestP
    checkoutpage.Continue Button
    Sleep    4s
Case 31 Cancel in Checkout Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    checkoutpage.First Name    TestF
    checkoutpage.Last Name    TestL
    checkoutpage.Postal Code    TestP
    checkoutpage.Cancel Button
    Sleep    4s
Case 32 Postal Code is Empty in Checkout Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    checkoutpage.First Name    TestF
    checkoutpage.Last Name    TestL
    checkoutpage.Continue Button
    Sleep    4s
Case 33 Last Name and Postal Code is Empty in Checkout Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    checkoutpage.First Name    TestF
    checkoutpage.Continue Button
    Sleep    4s
Case 34 First Name is Empty in Checkout Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    checkoutpage.Last Name    TestL
    checkoutpage.Postal Code    TestP
    checkoutpage.Continue Button
    Sleep    4s
Case 35 Last Name is Empty in Checkout Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    checkoutpage.First Name    TestF
    checkoutpage.Postal Code    TestP
    checkoutpage.Continue Button
    Sleep    4s
Case 36 Empty Field in Checkout Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    checkoutpage.Continue Button
    Sleep    4s
Case 37 Cancel in Confirmation Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    checkoutpage.First Name    TestF
    checkoutpage.Last Name    TestL
    checkoutpage.Postal Code    TestP
    checkoutpage.Continue Button
    confirmataionpage.Cancel in Confirmation Page
    Sleep    4s
Case 38 Finish in Confirmation Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    checkoutpage.First Name    TestF
    checkoutpage.Last Name    TestL
    checkoutpage.Postal Code    TestP
    checkoutpage.Continue Button
    confirmataionpage.Finish in Confirmation Page
    Sleep    4s
Case 39 Back To Products in Confirmation Page
    common.Open Website Swag Labs
    loginpage.Input Username    standard_user
    loginpage.Input Password    secret_sauce
    loginpage.Login Button
    Sleep    2s
    homepage.Add to cart on homepage    0
    Sleep    2s
    homepage.Cart
    Sleep    2s
    cartpage.Checkout Button
    checkoutpage.First Name    TestF
    checkoutpage.Last Name    TestL
    checkoutpage.Postal Code    TestP
    checkoutpage.Continue Button
    confirmataionpage.Finish in Confirmation Page
    confirmataionpage.Back To Products
    Sleep    4s