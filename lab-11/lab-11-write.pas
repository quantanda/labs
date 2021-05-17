program lab11_v3;

var
	fp: TextFile;
begin
	Assign(fp, 'text-in.txt');
	ReWrite(fp);
	WriteLn(fp, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');
	WriteLn(fp, 'Vivamus cursus felis eget neque molestie condimentum.');
	WriteLn(fp, 'Quisque non nunc at velit lacinia tristique.');
	WriteLn(fp, 'Praesent sed orci faucibus, efficitur dui a, convallis elit.');
	WriteLn(fp, 'Vestibulum maximus lacus a dolor dictum, a facilisis dui vestibulum.');
	WriteLn(fp, 'Integer eu dolor et lectus molestie cursus.');
	WriteLn(fp, 'Sed maximus magna ac mauris pellentesque congue.');
	WriteLn(fp, 'Suspendisse pretium quam quis elit ornare egestas.');
	WriteLn(fp, 'In finibus ante sed risus pretium, sed dictum risus sodales.');
	WriteLn(fp, 'Sed pharetra risus ornare eros feugiat tempor.');
	WriteLn(fp, 'Nulla pellentesque nisi in mollis finibus.');
	WriteLn(fp, 'Etiam facilisis massa ut arcu elementum ultricies.');
	WriteLn(fp, 'Sed facilisis orci a quam commodo, quis semper risus tincidunt.');
	WriteLn(fp, 'Suspendisse tincidunt eros in consequat finibus.');
	WriteLn(fp, 'Mauris sit amet ex vel mauris tincidunt semper.');
	WriteLn(fp, 'Sed non ex at augue vehicula sodales.');
	WriteLn(fp, 'Maecenas in augue eu nunc malesuada suscipit eget et diam.');
	WriteLn(fp, 'Sed sit amet risus et nisl luctus bibendum.');
	WriteLn(fp, 'Aliquam interdum felis a lorem tempor porttitor.');
	WriteLn(fp, 'Donec vel nunc vitae nunc faucibus rutrum sed at massa.');
	Close(fp);
end.