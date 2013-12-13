require "pathname"

namespace :doc do
  desc "Generate SVG files from doc/dot/*.dot"
  task :dot do
    Pathname.glob("doc/dot/*.dot").each do |dot|
      svg = Pathname.new("doc/svg/#{dot.basename('.dot')}.svg")
      svg.parent.mkpath
      dot.parent.mkpath
      sh "dot -o #{svg} -Tsvg #{dot}"
    end
  end
end
