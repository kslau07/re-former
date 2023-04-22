Rails console shows **422 Unprocessable Entity** when we submit a form that has not been permitted yet (strong parameters).

next terminal window: Ctrl + PgDn

***

Nested params in users_controller looks like this:

	params.require(:user).permit(:username, :email, :password)

***

To use `form_with` we need to have 

@user = User.new

in users#new.

***

