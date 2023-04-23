test commit

Rails console shows **422 Unprocessable Entity** when we submit a form that has not been permitted yet (must use strong parameters).

next terminal window: Ctrl + PgDn

***

Nested params in users_controller looks like this:

	params.require(:user).permit(:username, :email, :password)

***

To use `form_with` we need to have 

@user = User.new

in users#new.

***

Remember to use:
	form.email_field
	form.password_field

Input field values:
	value: 'default value here'
	placeholder: 'placeholder text here'

***

In the method for users#create use:

	if @user.update(user_params)
