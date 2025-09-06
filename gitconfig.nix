{config, pkgs, ...}:

{
    programs.git={
        enable=true;
        config={
            user.name="Harsha";
            user.email="69705177+ssaisriharsha@users.noreply.github.com";
            core.editor="code --wait";
            init.defaultBranch="main";
        };
    };
}
