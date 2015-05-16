Pod::Spec.new do |s|
  s.name         =  'TBHideableTableViewColumns'
  s.version      =  '1.0'
  s.license      =  'MIT'
  s.summary      =  'A category on NSTableView to manage columns like iTunes: hide/display, width... and keep the state between several launch'
  s.author       =  { 'Tom Baranes' => 'https://github.com/tbaranes' }
  s.source       =  { :git => 'https://github.com/tbaranes/TBHideableTableViewColumns.git', :tag => '1.0' }
  s.homepage     =  'https://github.com/tbaranes/TBHideableTableViewColumns'
  s.source_files =  'TBHideableTableViewColumns/NSTableView+TBHideableTableViewColumns.{h,m}'
  s.resources    =  'TBHideableTableViewColumns/TBHideableTableViewColumns.bundle'
  s.requires_arc =  true
  s.osx.deployment_target = '10.7'
end