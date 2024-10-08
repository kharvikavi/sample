#Home page Locator-1
myaccount_link="xpath://span[normalize-space()='My Account']"
register_link="xpath://a[normalize-space()='Register']"
login_link="xpath:(//a[normalize-space()='Login'])[1]"

#Login page Locator-1
email_txt="id:input-email"
password_txt="id:input-password"
login_btn="xpath://input[@type='submit']"

#My_account_page_Locator-1
myaccount_link1="xpath://span[normalize-space()='My Account']"
logout_link="xpath:(//a[normalize-space()='Logout'])[1]"  #unable to locate

#loginPage Locator
username_txt='id:user-name'
pwd_txt='id:password'
login_btn='id:login-button'
err_msg_txt='xpath://h3[@data-test="error"]'

#productPage_Locator
cardTitles_link= 'css:.inventory_item_name'
click_cart_ele='xpath://span[@class="fa-layers-counter shopping_cart_badge"]'
cart_product_link='css:.inventory_item_name'
menu_button='xpath://button[normalize-space()="Open Menu"]'
logout_btn='id:logout_sidebar_link'

#productDescriptionPage_Locator
checkout_btn='xpath://a[text()="CHECKOUT"]'

#summaryPage_Locator
firstname_txt='id:first-name'
lastname_txt='id:last-name'
zipcode_txt='id:postal-code'
continue_btn='xpath://input[@type="submit"]'
finish_btn='//a[text()="FINISH"]'
order_cnfm_msg='//h2[normalize-space()="THANK YOU FOR YOUR ORDER"]'


