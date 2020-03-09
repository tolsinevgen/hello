Name: hello
Version: 0.1
Release: alt1

Summary: Hello summary for Tolya
Summary(ru_RU.UTF-8): Привет Толя

License: GPLv3
Group: Education
Url: https://github.com/tolsinevgen/hello

Source: %name-%version.tar.gz

%description
Description of Hello Tolya

%description -l ru_RU.UTF-8
Описание программы Привет Толя

%prep
%setup

%build
make

%install
mkdir -p %buildroot%_bindir
install -m 755 hello %buildroot%_bindir

%files
%_bindir/hello

%changelog
