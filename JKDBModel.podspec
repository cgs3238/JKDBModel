Pod::Spec.new do |s|

  s.name         = "JKDBModel"
  s.version      = "2016.08.16"
  s.summary      = "FMDB数据库操作的封装，继承JKDBModel后一行代码实现CURD操作。"
  s.description  = <<-DESC
FMDB数据库操作的封装，继承JKDBModel后一行代码实现CURD操作。

因为项目中主要是多线程中操作数据库，所以Demo里都是多线程操作的方式，该类也可以在主线程中使用。

依赖FMDB，支持ARC和非ARC。

不需要实体与数据库映射的属性，添加到transients数组即可。
DESC
  s.homepage     = "https://github.com/Haley-Wong/JKDBModel"

  s.license             = { :type => 'NONE' }

  s.author              = "Haley-Wong"
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/cgs3238/JKDBModel.git", :tag => "#{s.version}"}
  s.dependency "FMDB"
  s.source_files  = "JKDBModel/DBModel/*.{h,m}"
  s.frameworks = "SystemConfiguration"
  s.libraries = "sqlite3"
  s.requires_arc = true

end
