package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_GuildFight_WayRoleInfo_CS extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_GuildFight_WayRoleInfo_CS";
      
      public static const WAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_GuildFight_WayRoleInfo_CS.way","way",1 << 3 | WireType.VARINT);
       
      
      private var way$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function Cmd_GuildFight_WayRoleInfo_CS()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_GuildFight_WayRoleInfo_CS.$MessageID;
      }
      
      public function clearWay() : void
      {
         this.hasField$0 &= 4294967294;
         this.way$field = new uint();
      }
      
      public function get hasWay() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set way(param1:uint) : void
      {
         this.hasField$0 |= 1;
         this.way$field = param1;
      }
      
      public function get way() : uint
      {
         return this.way$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasWay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.way$field);
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
                     throw new IOError("Bad data format: Cmd_GuildFight_WayRoleInfo_CS.way cannot be set twice.");
                  }
                  _loc3_++;
                  this.way = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc4_);
                  break;
            }
         }
      }
   }
}
