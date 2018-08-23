class UserMailer < ApplicationMailer
     def user_mailer
        @user = params[:detalle]  
        mail(to: 'gerorju@gmail.com', subject: 'Welcom to My Awesome Site')
    end   
end
