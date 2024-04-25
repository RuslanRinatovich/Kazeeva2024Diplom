using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfAssortmentCheck.Models
{
    public partial class Buy
    {
        public string GetInfo
        {
            get
            {
                return $"{User.GetFio}({Abonement.CategoryTrainer.Category.Name} {Abonement.CategoryTrainer.Trainer.GetFio})";

            }
        }

        public string GetColorStatus
        {
            get
            {
                if (LessonsLeftCount == 0)
                    return "#bbbbbb";
                else return "#ffffff";
            }
        }
    }
}
