class EntriesController < ApplicationController
  include ActiveModel::Validations
validates :coord_name, presence: true
validates :coord_email, presence: true
validates :coord_password, presence: true
validates :category_name, presence: true
validates :location_name, presence: true
validates :course_name, presence: true
validates :course_prerequisite, presence: true
validates :course_description, presence: true
def course_view
         @coords = Coordin.all
@categories = Category.all
 @locations = Location.all
 
    @name = params[:course_name]
    @prerequisite = params[:course_prerequisite]
    @description = params[:course_description]
    @course = Cou.create({:name => @name,:prerequisite => @prerequisite,:description => @description})
end
def course
         @coords = Coordin.all
@categories = Category.all
 @locations = Location.all
 
    @name = params[:course_name]
    @prerequisite = params[:course_prerequisite]
    @description = params[:course_description]
    @course = Cou.create({:name => @name,:prerequisite => @prerequisite,:description => @description})
end
def category
   @categoryname = params[:category_name] 
    @category = Category.create({:name => @categoryname})
     @coords = Coordin.all
@categories = Category.all
 @locations = Location.all
 

end

def form
         @coords = Coordin.all
@categories = Category.all
 @locations = Location.all
 
 @name = params[:contact_name]
 @email = params[:contact_email]
 @message = params[:contact_message]
 @contact = Contact.create({:name => @name,:email => @email,:message => @message})
 unless @name.blank? || @email.blank? || @password.blank?
 @contact = Contact.create({:name => @name,:email => @email,:message => @message})
 end
 @contacts = Contact.all
 end
def location
   @name = params[:location_name] 
    @location = Location.create({:name => @name})
   @categories = Category.all

 @locations = Location.all
end
def login 
    @current_user = params[:current_user]
    @coords = Coordin.all
@categories = Category.all
 @locations = Location.all
 email = Coordin.find_by(email: params[:coord_email])
  password = Coordin.find_by(password: params[:coord_password])

    if email && password
        if email.id == password.id
        $current_user = email
        p $current_user
        redirect_to '/'
  end
  end
end

def logoff
    $current_user = nil
    redirect_to '/'
end
def courseedit
       @coords = Cou.all
@categories = Category.all
 @locations = Location.all
     @name = params[:course_name]
 @prerequisite = params[:course_prerequisite]
 @description = params[:course_description]
 @category = params[:course_category]
 @location = params[:course_locaton]
        Cou.all.each do |cou|
        course = cou
        course.save
end
            
          
    
end

def coordedit
       @coords = Coordin.all
@categories = Category.all
 @locations = Location.all
     @coordname = params[:coordin_name]
 @coordemail = params[:coordin_email]
 @coordpassword = params[:coordin_password]
   user = Coordin.find($current_user.id)
            
            user.name = @coordname
           user.email = @coordemail
            user.password = @coordpassword
        user.save
        $current_user = Coordin.find($current_user.id)
end




def coord
 @coordname = params[:coordin_name]
 @coordemail = params[:coordin_email]
 @coordpassword = params[:coordin_password]
 @coord = Coordin.create({:name => @coordname,:email => @coordemail,:password => @coordpassword})
 
@coords = Coordin.all
@categories = Category.all
 @locations = Location.all

 end
 

end