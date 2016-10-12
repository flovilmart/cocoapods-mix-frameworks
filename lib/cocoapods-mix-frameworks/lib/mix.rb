module Pod
  class Installer
    def verify_framework_usage
      puts "mix-frameworks: Skip verify_framework_usage"
    end
    class Analyzer
      def generate_targets
          specs_by_target = result.specs_by_target.reject { |td, _| td.abstract? }
          check_pod_target_swift_versions(specs_by_target)
          pod_targets = generate_pod_targets(specs_by_target)
          aggregate_targets = specs_by_target.keys.map do |target_definition|
            generate_target(target_definition, pod_targets)
          end
          if installation_options.integrate_targets?
            # Copy embedded target pods that cannot have their pods embedded as frameworks to their host targets
            embedded_targets = aggregate_targets.select(&:requires_host_target?).select(&:requires_frameworks?)
            puts 'mix-frameworks: Skip analyze_host_targets_in_podfile'
            aggregate_targets.each do |target|
              copy_embedded_target_pod_targets_to_host(target, embedded_targets)
            end
          end
          aggregate_targets.each do |target|
            target.search_paths_aggregate_targets = aggregate_targets.select do |aggregate_target|
              target.target_definition.targets_to_inherit_search_paths.include?(aggregate_target.target_definition)
            end
          end
        end
    end
  end
end
