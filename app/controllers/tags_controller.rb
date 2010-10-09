class TagsController < ApplicationController

#before_filter :require_user, :only => :private


def index
	@tags = Tag.find(:all)
end
def show
	@tag = Tag.find(params[:id])
        @photos=Photo.find_tagged_with(@tag)
end

end
