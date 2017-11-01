EtlmdzFormu::Admin.controllers :topicaccounts do
  get :index do
    @title = "Topicaccounts"
    @topicaccounts = Topicaccount.all
    render 'topicaccounts/index'
  end

  get :new do
    @title = pat(:new_title, :model => 'topicaccount')
    @topicaccount = Topicaccount.new
    render 'topicaccounts/new'
  end

  post :create do
    @topicaccount = Topicaccount.new(params[:topicaccount])
    if @topicaccount.save
      @title = pat(:create_title, :model => "topicaccount #{@topicaccount.id}")
      flash[:success] = pat(:create_success, :model => 'Topicaccount')
      params[:save_and_continue] ? redirect(url(:topicaccounts, :index)) : redirect(url(:topicaccounts, :edit, :id => @topicaccount.id))
    else
      @title = pat(:create_title, :model => 'topicaccount')
      flash.now[:error] = pat(:create_error, :model => 'topicaccount')
      render 'topicaccounts/new'
    end
  end

  get :edit, :with => :id do
    @title = pat(:edit_title, :model => "topicaccount #{params[:id]}")
    @topicaccount = Topicaccount.find(params[:id])
    if @topicaccount
      render 'topicaccounts/edit'
    else
      flash[:warning] = pat(:create_error, :model => 'topicaccount', :id => "#{params[:id]}")
      halt 404
    end
  end

  put :update, :with => :id do
    @title = pat(:update_title, :model => "topicaccount #{params[:id]}")
    @topicaccount = Topicaccount.find(params[:id])
    if @topicaccount
      if @topicaccount.update_attributes(params[:topicaccount])
        flash[:success] = pat(:update_success, :model => 'Topicaccount', :id =>  "#{params[:id]}")
        params[:save_and_continue] ?
          redirect(url(:topicaccounts, :index)) :
          redirect(url(:topicaccounts, :edit, :id => @topicaccount.id))
      else
        flash.now[:error] = pat(:update_error, :model => 'topicaccount')
        render 'topicaccounts/edit'
      end
    else
      flash[:warning] = pat(:update_warning, :model => 'topicaccount', :id => "#{params[:id]}")
      halt 404
    end
  end

  delete :destroy, :with => :id do
    @title = "Topicaccounts"
    topicaccount = Topicaccount.find(params[:id])
    if topicaccount
      if topicaccount.destroy
        flash[:success] = pat(:delete_success, :model => 'Topicaccount', :id => "#{params[:id]}")
      else
        flash[:error] = pat(:delete_error, :model => 'topicaccount')
      end
      redirect url(:topicaccounts, :index)
    else
      flash[:warning] = pat(:delete_warning, :model => 'topicaccount', :id => "#{params[:id]}")
      halt 404
    end
  end

  delete :destroy_many do
    @title = "Topicaccounts"
    unless params[:topicaccount_ids]
      flash[:error] = pat(:destroy_many_error, :model => 'topicaccount')
      redirect(url(:topicaccounts, :index))
    end
    ids = params[:topicaccount_ids].split(',').map(&:strip)
    topicaccounts = Topicaccount.find(ids)
    
    if Topicaccount.destroy topicaccounts
    
      flash[:success] = pat(:destroy_many_success, :model => 'Topicaccounts', :ids => "#{ids.join(', ')}")
    end
    redirect url(:topicaccounts, :index)
  end
end
