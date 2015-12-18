class @WareReading
  constructor: (@configs)->
    @$el = jQuery(@configs["selector"])
    @progress = new @configs["progress_class"]()
  
  load: ()->
    if @$el.length > 0
      @progress.before_load(@$el)
      course_id = @$el.data("course-id")
      if !course_id
        @progress.error(@$el, {error: "不能读取course_id"})
        @progress.finally(@$el)
        return 
      @progress.before_load(@$el)
      jQuery.ajax
        url: "/api/courses/#{course_id}/progress"
        method: "GET"
        type: "json"
        success: (data) =>
          @progress.loaded(@$el,data)
          @progress.finally(@$el)
        error: (data) =>
          @progress.error(@$el,data)
          @progress.finally(@$el)
    else
      @progress.error(@$el, {error: "#{@configs['selector']} 未选中任何DOM"})
      @progress.finally(@$el)
