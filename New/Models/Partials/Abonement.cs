using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfAssortmentCheck.Models
{
    public partial class Abonement
    {
        public string GetInfo
        {
            get
            {
                return $"{CategoryTrainer.Trainer.GetFio}, {CategoryTrainer.Category.Name}, {LessonCount} занятий";

            }
        }
    }
}
