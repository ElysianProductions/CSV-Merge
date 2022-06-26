#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QMenu>
#include <QAction>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

      QMenu *primaryMenu;
      QMenu *fileSubMenu;
      QMenu *settingsSubMenu;
      QMenu *helpSubMenu;

      QAction *configurationAction;
      QAction *checkForUpdatesAction;
      QAction *loadGithubAction;
      QAction *printFileAction;
      QAction *saveFileAction;
      QAction *aboutAction;


      void init_actions();
      void init_connections();
      void init_menus();

protected:



private:
    Ui::MainWindow *ui;




};
#endif // MAINWINDOW_H
