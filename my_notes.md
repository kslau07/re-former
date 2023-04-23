

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

***

On rewriting form_with form elements:

Remember: model: @user **is singular**

Remember: method: :patch **for update**

Remember: text_field, email_field, password_field

Learned: retrieved edit fields are overridden by defaults from placeholder and/or value, it seems difficult to refactor a partial out if we want to use placeholder/value.