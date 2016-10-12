module Pod
  class Installer
    def verify_framework_usage
      puts "mix-frameworks: Skip verify_framework_usage"
    end
    class Analyzer
      def analyze_host_targets_in_podfile(aggregate_targets, embedded_aggregate_targets)
        puts 'mix-frameworks: Skip analyze_host_targets_in_podfile'
      end
    end
  end
end
