require "pathname"

namespace :doc do
  desc "Generate SVG files from doc/dot/*.dot"
  task :dot do
    Pathname.glob("doc/dot/*.dot").each do |dot|
      svg = Pathname.new("doc/png/#{dot.basename('.dot')}.png")
      svg.parent.mkpath
      dot.parent.mkpath
      sh "dot -o #{svg} -Tpng #{dot}"
    end
  end
end
