module InstallerExtensions
  def verify_framework_usage
    puts "mix-frameworks: Skip verify_framework_usage"
  end
end
module AnalyzerExtensions
  def analyze_host_targets_in_podfile(aggregate_targets, embedded_aggregate_targets)
    puts 'mix-frameworks: Skip analyze_host_targets_in_podfile'
  end
end

module Pod
  class Installer
    prepend InstallerExtensions
    class Analyzer
      prepend AnalyzerExtensions
    end
  end
end