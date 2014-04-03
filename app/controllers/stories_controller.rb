class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]
  before_action :load_users, only: [:new, :edit]
  before_action :load_themes, only: [:new, :edit]
  before_action :load_formats, only: [:new, :edit] 
  # GET /stories
  # GET /stories.json
  def index
    order = sortable_column_order
    @stories = Story.order(order)
  end

  def calendar
    @stories = Story.all
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
  end

  # GET /stories/new
  def new
    @story = Story.new
  end

  # GET /stories/1/edit
  def edit
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(story_params)

    respond_to do |format|
      if @story.save
        format.html { redirect_to @story, notice: 'Story was successfully created.' }
        format.json { render action: 'show', status: :created, location: @story }
      else
        format.html { render action: 'new' }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:nickname, :start_time, :notes, :writer_id, :editor_id, :producer_id, :theme_id, :format_id, :status)
    end

    def load_users
      @producers = Producer.order(:username).collect {|producer| [ producer.username, producer.id] }
      @writers = Writer.order(:username).collect {|writer| [ writer.username, writer.id] }
      @editors = Editor.order(:username).collect {|editor| [ editor.username, editor.id] }
    end

    def load_themes
      @themes = Theme.order(:theme).collect {|theme| [ theme.theme, theme.id] }
    end

    def load_formats
      @formats = Format.order(:format).collect {|format| [ format.format, format.id] }
    end




end
