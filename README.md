## Moleskine PoC App

### Pile logicielle sélectionnée

#### Backend

* Node.js
* Mongo

#### Front end

* Angular
* Ratchet
* Cordova

### Création du squelette de projet avec tous les building blocks

#### Installation des modules Node

```
npm init                                # generation du package.json
npm install grunt --save-dev
npm install bower --save-dev
npm install grunt-cordova-ng --save-dev
npm install grunt-bower-task --save-dev
```

#### Installation de l'outil command-line Cordova

```
sudo npm install -g cordova
```

#### Creation d'un projet vide Cordova

```
cordova create moleskineApp ca.code3.poc.moleskine MoleskineApp
```