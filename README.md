Vim gitignore plugin
====================

About
-----

This plugin provides syntax highlighting and code snippets
(using [snipMate][1], [neosnippet][2], or [ultisnips][3])
based on github's [gitignore][7].


Requirements
------------

* For using code snippets your should install
[snipMate][1], [neosnippet][2], or [ultisnips][3].


Installation ways
-----------------

* Using [vundle][4], or [neobundle][5], or other options.

* [vundle][4]

    ```VimL
     Plugin 'gisphm/vim-gitignore'
    ```

* [neobundle][5]

    ```VimL
     NeoBundle 'gisphm/vim-gitignore'
    ```


Usage
-----

### Snippets

`vim-gitignore` contains a set of snippets. You can use it by
opening your `.gitignore` file, typing snippet name (for example, `Python`)
and pressing `<Tab>` key or other key defined in your vimrc.

You can execute the script [rebuild-snippets](rebuild-snippets) to rebuild snippets
from gitignore files provided by github's [gitignore][7].


List
-----
The following is the list of snippets in the [snippets](snippets/gitignore) folder

```shell
actionscript,ada,agda,android,appceleratortitanium,appcode,archives,
archlinuxpackages,autotools,bancha,basercms,bower,bricxcc,c,c++,cakephp,
cfwheels,chefcookbook,clojure,cloud9,cmake,codeigniter,codekit,commonlisp,
compass,composer,concrete5,coq,cvs,dart,darteditor,delphi,django,dotsettings,
dreamweaver,drupal,eagle,eclipse,elasticbeanstalk,elisp,elixir,emacs,ensime,
episerver,erlang,espresso,expressionengine,fancy,finale,flexbuilder,forcedotcom,
freepascal,fuelphp,gcov,go,gradle,grails,gwt,haskell,intellij,java,jboss,jekyll,
jetbrains,joe,joomla,justcode,jython,kate,kdevelop4,kohana,komodoedit,laravel,
latex,lazarus,leiningen,lemonstand,lilypond,linux,lithium,magento,matlab,maven,
mercurial,meteor,modelsim,monodevelop,nanoc,netbeans,node,notepadpp,objective-c,
ocaml,opa,opencart,openfoam,oracleforms,osx,perl,ph7cms,phpstorm,playframework,
plone,prestashop,processing,pycharm,python,qooxdoo,qt,quartus2,r,rails,redcar,
rhodesrhomobile,ros,ruby,rubymine,rubymotion,sass,sbt,scala,scrivener,sdcc,
seamgen,senchatouch,silverstripe,sketchup,stella,sublimetext,sugarcrm,svn,
symfony,symfony2,symphonycms,tags,target3001,tarmainstallmate,tasm,tex,textmate,
textpattern,turbogears2,typo3,unity,vagrant,vim,virtualenv,visualstudio,vvvv,
waf,wakanda,webmethods,webstorm,windows,wordpress,xamarinstudio,xcode,xilinxise,
yeoman,yii,zendframework
```

TODO
----

1. ✓ add indent file
2. add more highlighting in syntax file

Another Option
--------------

You can alse follow [gitignore.io][6] to generate `.gitignore` file in your project.

License
--------
> Copyright 2015 gisphm <phmfk@hotmail.com>
>
> Licensed under the Apache License, Version 2.0 (the "License");
> you may not use this file except in compliance with the License.
> You may obtain a copy of the License at
>
>> http://www.apache.org/licenses/LICENSE-2.0
>
> Unless required by applicable law or agreed to in writing, software
> distributed under the License is distributed on an "AS IS" BASIS,
> WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
> See the License for the specific language governing permissions and
> limitations under the License.


[1]: https://github.com/garbas/vim-snipmate
[2]: https://github.com/Shougo/neosnippet.vim
[3]: https://github.com/SirVer/ultisnips
[4]: https://github.com/gmarik/vundle
[5]: https://github.com/Shougo/neobundle.vim
[6]: https://www.gitignore.io
[7]: https://github.com/github/gitignore
