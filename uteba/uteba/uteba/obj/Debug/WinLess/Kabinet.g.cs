﻿#pragma checksum "..\..\..\WinLess\Kabinet.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "C1451CE410E025884C825E04BD6C4C97A46CB85C5AE0485C5290E697FFAA681D"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using uteba;


namespace uteba {
    
    
    /// <summary>
    /// Kabinet
    /// </summary>
    public partial class Kabinet : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 31 "..\..\..\WinLess\Kabinet.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_Exit;
        
        #line default
        #line hidden
        
        
        #line 47 "..\..\..\WinLess\Kabinet.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border brdr_photo;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\WinLess\Kabinet.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtblk_fName;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\..\WinLess\Kabinet.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtblk_lName;
        
        #line default
        #line hidden
        
        
        #line 68 "..\..\..\WinLess\Kabinet.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtblk_group;
        
        #line default
        #line hidden
        
        
        #line 76 "..\..\..\WinLess\Kabinet.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_lessons;
        
        #line default
        #line hidden
        
        
        #line 82 "..\..\..\WinLess\Kabinet.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ProgressBar pb_Lesson;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/uteba;component/winless/kabinet.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\WinLess\Kabinet.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 8 "..\..\..\WinLess\Kabinet.xaml"
            ((uteba.Kabinet)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Window_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.btn_Exit = ((System.Windows.Controls.Button)(target));
            
            #line 36 "..\..\..\WinLess\Kabinet.xaml"
            this.btn_Exit.Click += new System.Windows.RoutedEventHandler(this.btn_Exit_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.brdr_photo = ((System.Windows.Controls.Border)(target));
            return;
            case 4:
            this.txtblk_fName = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 5:
            this.txtblk_lName = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 6:
            this.txtblk_group = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 7:
            this.btn_lessons = ((System.Windows.Controls.Button)(target));
            
            #line 81 "..\..\..\WinLess\Kabinet.xaml"
            this.btn_lessons.Click += new System.Windows.RoutedEventHandler(this.btn_lessons_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.pb_Lesson = ((System.Windows.Controls.ProgressBar)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

