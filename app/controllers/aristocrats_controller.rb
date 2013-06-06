class AristocratsController

  def create
    @aristocrat = Aristocrat.create(params[:first_name, :surname, :email])
    if @aristocrat.invalid?
    render :json => {:message => "There were some errors in your form", :errors => @aristocrat.errors}
    else
     render :json => { :message => @aristocrat }
    end


  end

end
