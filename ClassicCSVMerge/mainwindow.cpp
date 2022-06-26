#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    init_connections();
    init_actions();
    init_menus();
}

MainWindow::~MainWindow()
{
    delete ui;

}



void MainWindow::init_connections()
{

}

void MainWindow::init_actions()
{
    saveFileAction = new QAction(tr("Save as"));
    saveFileAction->setShortcuts(QKeySequence::SaveAs);
    saveFileAction->setStatusTip(tr("Click this to save your file."));
    saveFileAction->setToolTip("Save your CSV file.");

    printFileAction = new QAction(tr("Print"));
    printFileAction->setShortcuts(QKeySequence::Print);
    printFileAction->setStatusTip(tr("Click this to print your file."));
    printFileAction->setToolTip("Print your CSV file.");


    configurationAction = new QAction(tr("Configuration"));
    configurationAction->setShortcuts(QKeySequence::New);
    configurationAction->setStatusTip(tr("Modify program settings."));
    configurationAction->setToolTip("Launch configuration settings.");


    checkForUpdatesAction = new QAction(tr("Check for updates"));
    checkForUpdatesAction->setShortcuts(QKeySequence::New);
    checkForUpdatesAction->setStatusTip(tr("Check for available updates."));
    checkForUpdatesAction->setToolTip("Check for available updates.");

    aboutAction = new QAction(tr("About"));
    aboutAction->setShortcuts(QKeySequence::New);
    aboutAction->setStatusTip(tr("Get more information about this software."));
    aboutAction->setToolTip("Get more information about this software.");

    loadGithubAction = new QAction(tr("Source code"));
    loadGithubAction->setShortcuts(QKeySequence::New);
    loadGithubAction->setStatusTip(tr("Launch your browser and view the source code on github."));
    loadGithubAction->setToolTip("Launch your browser and view the source code on github");
}

void MainWindow::init_menus()
{
    primaryMenu = menuBar()->addMenu(tr("&Menu"));
    primaryMenu->addMenu(fileSubMenu = new QMenu("&File"));
    fileSubMenu->addSeparator();
    primaryMenu->addMenu(settingsSubMenu = new QMenu("&Settings"));
    settingsSubMenu->addSeparator();
    primaryMenu->addMenu(helpSubMenu = new QMenu("&Help"));


    fileSubMenu->addAction(saveFileAction);
    fileSubMenu->addAction(printFileAction);
    settingsSubMenu->addAction(configurationAction);
    settingsSubMenu->addAction(checkForUpdatesAction);
    helpSubMenu->addAction(aboutAction);
    helpSubMenu->addAction(loadGithubAction);

    primaryMenu->setToolTipsVisible(true);
    fileSubMenu->setToolTipsVisible(true);
    settingsSubMenu->setToolTipsVisible(true);
    helpSubMenu->setToolTipsVisible(true);
}
