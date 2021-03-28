package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_Quest_SyncState_SC extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_Quest_SyncState_SC";
      
      public static const QUEST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("PVZ.Cmd.Cmd_Quest_SyncState_SC.quest","quest",1 << 3 | WireType.LENGTH_DELIMITED,Dto_Quest_Info);
       
      
      private var quest$field:Dto_Quest_Info;
      
      public function Cmd_Quest_SyncState_SC()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_Quest_SyncState_SC.$MessageID;
      }
      
      public function clearQuest() : void
      {
         this.quest$field = null;
      }
      
      public function get hasQuest() : Boolean
      {
         return this.quest$field != null;
      }
      
      public function set quest(param1:Dto_Quest_Info) : void
      {
         this.quest$field = param1;
      }
      
      public function get quest() : Dto_Quest_Info
      {
         return this.quest$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasQuest)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.quest$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc4_:uint = 0;
         var _loc3_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc4_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc4_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_Quest_SyncState_SC.quest cannot be set twice.");
                  }
                  _loc3_++;
                  this.quest = new Dto_Quest_Info();
                  ReadUtils.read$TYPE_MESSAGE(param1,this.quest);
                  break;
               default:
                  super.readUnknown(param1,_loc4_);
                  break;
            }
         }
      }
   }
}
